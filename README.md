
# Table of Contents

1.  [Project structure and layout](#org72a4c25)
2.  [Installation](#org1369488)
    1.  [Use as channel](#orga160e2c)
    2.  [Use as build/install source](#org02e0fe3)
3.  [References](#orgcbdbeb8)
    1.  [Guix channels](#orgddce811)
    2.  [etc](#orgada4a36)

*FFAB :: Flock Full of Aleatory Burden*

[![builds.sr.ht status](https://builds.sr.ht/~hellseher/ffab.svg)](https://builds.sr.ht/~hellseher/ffab?)

This repository contains packaging process and patches contributed to <guix-patches@gnu.org>. It
also can be used as stand alone Guix channel.

The main target is to collect packages related to Astronomy, Astrophysics and group of languages
such as **Common Lisp**, **Golan** and **Python**.

`master` branch contains packages passed lint and build procedures and is intended to be save to
use all the time, `wip-` branches might be broken on some stage.


<a id="org72a4c25"></a>

# Project structure and layout

Layout follows Guix upstream.

    ../
    ├── etc
    ├── ffab
    │   ├── guix
    │   │   ├── build-system
    │   │   └── import
    │   └── packages
    │       └── patches
    ├── org
    ├── patches
    ├── scripts
    └── tmp
    
    12 directories

-   **./issues.org:** Tracks all sent patches to <guix-patches@gnu.org>
-   **./TODO.md:** Generated report from packaging process in `org/` directory.
-   **./Makefile:** Contains CI aware lint and build targets with convenient tooling for local build.

    :guix-commit 3ab983d630a95a29b9418b1ba8a26e5ca2836ec0
    :accepted 172
    :pending 160
    
    :astronomy 24
    :golang 70
    :lisp 9
    :python 13
    :misc 20
    
    :date Tue 11 Apr 21:55:11 BST 2023

Any packages with suffix **-ffab** are meant to be accepted in Guix upstream but have kind of
modifications e.g. newer version, enabled tests etc.


<a id="org1369488"></a>

# Installation

All examples are based on assumptions that `guix` is the main system or available as package
manager.


<a id="orga160e2c"></a>

## Use as channel

`/.config/guix/channels.scm`

    (cons* (channel
            (name 'ffab)
            ;; Mirror https://github.com/Hellseher/guix-channel
            (url "https://git.sr.ht/~hellseher/ffab"))
           %default-channels)


<a id="org02e0fe3"></a>

## Use as build/install source

    ~$ git clone https://git.sr.ht/~hellseher/ffab
    ~$ cd ffab
    ~$ guix build -L . python-sunpy


<a id="orgcbdbeb8"></a>

# References

Main official resources:

-   **VCS:** <https://git.savannah.gnu.org/cgit/guix.git> Read only git repository hosted at Savanha.
-   **CI and Substitutes:** -   <https://ci.guix.gnu.org> Main CI and substitute and server
    -   <https://bordeaux.guix.gnu.org/> Secondary substitute server
-   **HPC:** <http://hpc.guix.info/> Reproducible software deployment for high-performance computing.
-   **Data Service:** <https://data.guix.gnu.org/>
-   **QA Service:** <https://qa.guix.gnu.org/>
-   **Issues:** <https://issues.guix.gnu.org/>


<a id="orgddce811"></a>

## Guix channels

-   <https://github.com/flatwhatson/guix-channel>
-   **nonguix:** Guix channel for packages that can&rsquo;t be included upstream. Please do NOT promote or
    refer to this repository on any official Guix communication channels.
    <https://gitlab.com/nonguix/nonguix>
-   **guixrus:** Curated collection of packages with goal to promote them to upstream
    <https://sr.ht/~whereiseveryone/guixrus/>
-   **Guix Gaming Channels:** A collection of gaming-oriented channels for Guix
    <https://gitlab.com/guix-gaming-channels>
-   **Guix Science:** Free scientific packages for GNU Guix <https://github.com/guix-science/guix-science>
    and non-free scientific packages for GNU Guix <https://github.com/guix-science/guix-science-nonfree>
-   **Emacs channel:** Guix channel for automatically generated emacs packages
    <https://github.com/babariviere/guix-emacs>


<a id="orgada4a36"></a>

## etc

-   <https://github.com/ryanprior/guix-packages>
-   <https://github.com/BIMSBbioinfo/guix-bimsb>
-   <https://github.com/techenthusiastsorg/awesome-guix>

