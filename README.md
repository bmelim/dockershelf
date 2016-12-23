![Banner](https://gitcdn.xyz/repo/LuisAlejandro/dockershelf/master/art/banner.svg)

---

[![](https://img.shields.io/travis/LuisAlejandro/dockershelf.svg)](https://travis-ci.org/LuisAlejandro/dockershelf)
[![](https://cla-assistant.io/readme/badge/LuisAlejandro/dockershelf)](https://cla-assistant.io/LuisAlejandro/dockershelf)
[![](https://badges.gitter.im/LuisAlejandro/dockershelf.svg)](https://gitter.im/LuisAlejandro/dockershelf)

Current version: 0.1.0

*Dockershelf* is a repository that serves as a collector for docker recipes that I've found useful for specific cases and personal applications. However, I've designed them for universal purposes, so that they can serve for other applications as well.

All docker images are updated, tested and published *daily* via a Travis cron job.

# How to download

Pull one of the available images and start hacking!

```bash
git pull [docker image name]
git run -it [docker image name] bash
```
<sup>[docker image name] is the desired image to download. Scroll down to see which ones are available.</sup>

# How to build locally

Clone this repository to your machine.

```bash
git clone https://github.com/LuisAlejandro/dockershelf
```

Run the build script in the root folder of your local copy. Remember to have docker installed and make sure your user has proper privileges to execute `docker build`.

```bash
bash build-image.sh [docker image name]
```

<sup>[docker image name] is the desired image to build. Scroll down to see which ones are available.</sup>

# Available images

## Debian

These are images similar to the official, but with some slightly different configurations. Check out their Dockerfiles for more details.

* `dockershelf/debian:sid`

> [![](https://img.shields.io/badge/Dockerfile-debian:sid-yellow.svg)](https://github.com/LuisAlejandro/dockershelf/blob/master/debian/sid/Dockerfile) [![](https://images.microbadger.com/badges/image/dockershelf/debian:sid.svg)](https://microbadger.com/images/dockershelf/debian:sid)

* `dockershelf/debian:stretch`

> [![](https://img.shields.io/badge/Dockerfile-debian:stretch-yellow.svg)](https://github.com/LuisAlejandro/dockershelf/blob/master/debian/stretch/Dockerfile) [![](https://images.microbadger.com/badges/image/dockershelf/debian:stretch.svg)](https://microbadger.com/images/dockershelf/debian:stretch)

* `dockershelf/debian:jessie`

> [![](https://img.shields.io/badge/Dockerfile-debian:jessie-yellow.svg)](https://github.com/LuisAlejandro/dockershelf/blob/master/debian/jessie/Dockerfile) [![](https://images.microbadger.com/badges/image/dockershelf/debian:jessie.svg)](https://microbadger.com/images/dockershelf/debian:jessie)

* `dockershelf/debian:wheezy`

> [![](https://img.shields.io/badge/Dockerfile-debian:wheezy-yellow.svg)](https://github.com/LuisAlejandro/dockershelf/blob/master/debian/wheezy/Dockerfile) [![](https://images.microbadger.com/badges/image/dockershelf/debian:wheezy.svg)](https://microbadger.com/images/dockershelf/debian:wheezy)

&nbsp;

## Python

These are python images compiled from source, using the `debian/rules` makefile from debian's python source. These images are then updated to Debian Sid. Check out their Dockerfiles for more details.

* `dockershelf/python:2.6`

> [![](https://img.shields.io/badge/Dockerfile-python:2.6-yellow.svg)](https://github.com/LuisAlejandro/dockershelf/blob/master/python/2.6/Dockerfile) [![](https://images.microbadger.com/badges/image/dockershelf/python:2.6.svg)](https://microbadger.com/images/dockershelf/python:2.6)

* `dockershelf/python:2.7`

> [![](https://img.shields.io/badge/Dockerfile-python:2.7-yellow.svg)](https://github.com/LuisAlejandro/dockershelf/blob/master/python/2.7/Dockerfile) [![](https://images.microbadger.com/badges/image/dockershelf/python:2.7.svg)](https://microbadger.com/images/dockershelf/python:2.7)

* `dockershelf/python:3.2`

> [![](https://img.shields.io/badge/Dockerfile-python:3.2-yellow.svg)](https://github.com/LuisAlejandro/dockershelf/blob/master/python/3.2/Dockerfile) [![](https://images.microbadger.com/badges/image/dockershelf/python:3.2.svg)](https://microbadger.com/images/dockershelf/python:3.2)

* `dockershelf/python:3.4`

> [![](https://img.shields.io/badge/Dockerfile-python:3.4-yellow.svg)](https://github.com/LuisAlejandro/dockershelf/blob/master/python/3.4/Dockerfile) [![](https://images.microbadger.com/badges/image/dockershelf/python:3.4.svg)](https://microbadger.com/images/dockershelf/python:3.4)

* `dockershelf/python:3.5`

> [![](https://img.shields.io/badge/Dockerfile-python:3.5-yellow.svg)](https://github.com/LuisAlejandro/dockershelf/blob/master/python/3.5/Dockerfile) [![](https://images.microbadger.com/badges/image/dockershelf/python:3.5.svg)](https://microbadger.com/images/dockershelf/python:3.5)

* `dockershelf/python:3.6`

> [![](https://img.shields.io/badge/Dockerfile-python:3.6-yellow.svg)](https://github.com/LuisAlejandro/dockershelf/blob/master/python/3.6/Dockerfile) [![](https://images.microbadger.com/badges/image/dockershelf/python:3.6.svg)](https://microbadger.com/images/dockershelf/python:3.6)

* `dockershelf/python:2.7and3.5`

> [![](https://img.shields.io/badge/Dockerfile-python:2.7and3.5-yellow.svg)](https://github.com/LuisAlejandro/dockershelf/blob/master/python/2.7and3.5/Dockerfile) [![](https://images.microbadger.com/badges/image/dockershelf/python:2.7and3.5.svg)](https://microbadger.com/images/dockershelf/python:2.7and3.5)

&nbsp;

## PyPIContents

These are images based on `dockershelf/python` images and are used to build the [PyPIContents Index](https://github.com/LuisAlejandro/pypicontents). Check out their Dockerfiles for more details.

* `dockershelf/pypicontents:2.6`

> [![](https://img.shields.io/badge/Dockerfile-pypicontents:2.6-yellow.svg)](https://github.com/LuisAlejandro/dockershelf/blob/master/pypicontents/2.6/Dockerfile) [![](https://images.microbadger.com/badges/image/dockershelf/pypicontents:2.6.svg)](https://microbadger.com/images/dockershelf/pypicontents:2.6)

* `dockershelf/pypicontents:2.7`

> [![](https://img.shields.io/badge/Dockerfile-pypicontents:2.7-yellow.svg)](https://github.com/LuisAlejandro/dockershelf/blob/master/pypicontents/2.7/Dockerfile) [![](https://images.microbadger.com/badges/image/dockershelf/pypicontents:2.7.svg)](https://microbadger.com/images/dockershelf/pypicontents:2.7)

* `dockershelf/pypicontents:3.2`

> [![](https://img.shields.io/badge/Dockerfile-pypicontents:3.2-yellow.svg)](https://github.com/LuisAlejandro/dockershelf/blob/master/pypicontents/3.2/Dockerfile) [![](https://images.microbadger.com/badges/image/dockershelf/pypicontents:3.2.svg)](https://microbadger.com/images/dockershelf/pypicontents:3.2)

* `dockershelf/pypicontents:3.4`

> [![](https://img.shields.io/badge/Dockerfile-pypicontents:3.4-yellow.svg)](https://github.com/LuisAlejandro/dockershelf/blob/master/pypicontents/3.4/Dockerfile) [![](https://images.microbadger.com/badges/image/dockershelf/pypicontents:3.4.svg)](https://microbadger.com/images/dockershelf/pypicontents:3.4)

* `dockershelf/pypicontents:3.5`

> [![](https://img.shields.io/badge/Dockerfile-pypicontents:3.5-yellow.svg)](https://github.com/LuisAlejandro/dockershelf/blob/master/pypicontents/3.5/Dockerfile) [![](https://images.microbadger.com/badges/image/dockershelf/pypicontents:3.5.svg)](https://microbadger.com/images/dockershelf/pypicontents:3.5)

* `dockershelf/pypicontents:3.6`

> [![](https://img.shields.io/badge/Dockerfile-pypicontents:3.6-yellow.svg)](https://github.com/LuisAlejandro/dockershelf/blob/master/pypicontents/3.6/Dockerfile) [![](https://images.microbadger.com/badges/image/dockershelf/pypicontents:3.6.svg)](https://microbadger.com/images/dockershelf/pypicontents:3.6)

* `dockershelf/pypicontents:2.7and3.5`

> [![](https://img.shields.io/badge/Dockerfile-pypicontents:2.7and3.5-yellow.svg)](https://github.com/LuisAlejandro/dockershelf/blob/master/pypicontents/2.7and3.5/Dockerfile) [![](https://images.microbadger.com/badges/image/dockershelf/pypicontents:2.7and3.5.svg)](https://microbadger.com/images/dockershelf/pypicontents:2.7and3.5)

&nbsp;

## Latex

This is an image based on [`dockershelf/debian:sid`](https://microbadger.com/images/dockershelf/debian:sid) with `texlive-fonts-recommended`, `texlive-latex-base`, `texlive-latex-extra` and `latex-xcolor` packages installed. It should be enough to use the `pdflatex` binary for basic Latex to PDF conversion.


* `dockershelf/latex:sid`

> [![](https://img.shields.io/badge/Dockerfile-latex:sid-yellow.svg)](https://github.com/LuisAlejandro/dockershelf/blob/master/latex/sid/Dockerfile) [![](https://images.microbadger.com/badges/image/dockershelf/latex:sid.svg)](https://microbadger.com/images/dockershelf/latex:sid)

&nbsp;

# Made with :heart: and :hamburger:

![Banner](http://huntingbears.com.ve/static/img/site/banner.svg)

&nbsp;

My name is Luis ([@LuisAlejandro](https://github.com/LuisAlejandro)) and I'm a Free and Open-Source Software developer living in Maracay, Venezuela.

If you like what I do, please support me on [Patreon](https://www.patreon.com/luisalejandro),  [Flattr](https://flattr.com/profile/luisalejandro), or donate via [PayPal](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=B8LPXHQY8QE8Y), so that I can continue doing what I love.

> Blog [huntingbears.com.ve](http://huntingbears.com.ve) · GitHub [@LuisAlejandro](https://github.com/LuisAlejandro) · Twitter [@LuisAlejandro](https://twitter.com/LuisAlejandro)

&nbsp;
