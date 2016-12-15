#!/usr/bin/env bash

# Exit early if there are errors and be verbose
set -ex

# Some initial configuration
BASEDIR="$( dirname $( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd ) )"
MIRROR="http://httpredir.debian.org/debian"
SUITE="sid"

# Packages to install at the end
DPKG_DEPENDS="iproute2 iputils-ping locales curl ca-certificates"

# Remove tianon's config
rm -rfv "/etc/apt/apt.conf.d/docker-clean" \
        "/etc/apt/apt.conf.d/docker-gzip-indexes" \
        "/etc/apt/apt.conf.d/docker-autoremove-suggests" \
        "/etc/apt/apt.conf.d/docker-no-languages" \
        "/etc/dpkg/dpkg.cfg.d/docker-apt-speedup"

# Configuring DNS
{
    echo "nameserver 8.8.8.8"
    echo "nameserver 8.8.4.4"
} | tee "/etc/resolv.conf" > /dev/null

# Configure this locale please
echo "en_US.UTF-8 UTF-8" > "/etc/locale.gen"

# Configure apt sources
echo "deb ${MIRROR} ${SUITE} main" > "/etc/apt/sources.list"

# Dpkg, please always install configurations from upstream and be fast.
# Also, exclude all these paths from ever installing as I don't need them.
{
    echo "force-confmiss"
    echo "force-confdef"
    echo "force-confnew"
    echo "force-overwrite"
    echo "force-unsafe-io"
    echo "path-exclude /usr/share/doc/*"
    echo "path-exclude /usr/share/groff/*"
    echo "path-exclude /usr/share/info/*"
    echo "path-exclude /usr/share/linda/*"
    echo "path-exclude /usr/share/lintian/*"
    echo "path-exclude /usr/share/locale/*"
    echo "path-exclude /usr/share/man/*"
} | tee "/etc/dpkg/dpkg.cfg.d/100-dpkg" > /dev/null

# Apt, don't give me translations, assume always a positive answer,
# don't fill my image with recommended stuff I didn't told you to install,
# be permissive with packages without visa and clean your shit.
{
    echo 'Dir::Cache::pkgcache "";'
    echo 'Dir::Cache::srcpkgcache "";'
    echo 'Acquire::Languages "none";'
    echo 'Acquire::GzipIndexes "true";'
    echo 'Acquire::CompressionTypes::Order:: "gz";'
    echo 'Apt::Get::Assume-Yes "true";'
    echo 'Apt::Install-Suggests "false";'
    echo 'Apt::Install-Recommends "false";'
    echo 'Apt::Get::AllowUnauthenticated "true";'
    echo 'Apt::AutoRemove::SuggestsImportant "false";'
    echo 'Apt::Update::Post-Invoke { "/usr/share/docker/debian/sid-min/clean-apt.sh"; };'
    echo 'Dpkg::Post-Invoke { "/usr/share/docker/debian/sid-min/clean-dpkg.sh"; };'
} | tee "/etc/apt/apt.conf.d/100-apt" > /dev/null

# Install dependencies and upgrade
apt-get update
apt-get upgrade
apt-get install ${DPKG_DEPENDS}

# Configure locales
update-locale LANG="en_US.UTF-8" LANGUAGE="en_US.UTF-8" LC_ALL="en_US.UTF-8"

# Final cleaning
find "/usr" -name "*.py[co]" -print0 | xargs -0r rm -rfv
find "/usr" -name "__pycache__" -type d -print0 | xargs -0r rm -rfv
rm -rfv "/tmp/"* "/usr/share/doc/"* "/usr/share/locale/"* \
        "/usr/share/man/"* "/var/cache/debconf/"* \
        "/var/cache/apt/"* "/var/tmp/"* "/var/log/"* \
        "/var/lib/apt/lists/"*