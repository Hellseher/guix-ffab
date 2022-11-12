
# Table of Contents

1.  [Project structure and layout](#orgae06e1d)
2.  [Installation](#org0a870ae)
    1.  [Use as channel](#orgcd2bb7b)
    2.  [Use as build/install source](#org1ae73a7)
3.  [References](#org71462d0)
    1.  [Guix channels](#org920e349)
    2.  [etc](#org5305d11)

*FFAB :: Flock Full of Aleatory Burden*

[![builds.sr.ht status](https://builds.sr.ht/~hellseher/ffab.svg)](https://builds.sr.ht/~hellseher/ffab?)

This repository contains packaging process and patches contributed to <guix-patches@gnu.org>. It
also can be used as stand alone Guix channel.

The main target is to collect packages related to Astronomy, Astrophysics and group of languages
such as **Common Lisp**, **Golan** and **Python**.

`master` branch contains of packages passed lint and build procedure and is intended to be save to
use all the time, `wip-` branches might be broken on some stage.


<a id="orgae06e1d"></a>

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
    
    11 directories

-   **issues.org:** Tracks all sent patches to <guix-patches@gnu.org>
-   **TODO.md:** Generated report from packaging process in `org/` directory.
-   **Makefile:** Contains CI aware lint and build targets with convenient tooling for local build.

    :guix-commit 4a34da845ed91821d38ba8a9b65ad650dd7488d1
    :accepted 118
    :pending 165
    
    :astronomy 34
    :golang 41
    :lisp 42
    :python 13
    
    :date Sun 6 Nov 23:19:16 GMT 2022


<a id="org0a870ae"></a>

# Installation

All examples are based on assumptions that `guix` is the main system or available as package
manager.


<a id="orgcd2bb7b"></a>

## Use as channel

`/.config/guix/channels.scm`

    (cons* (channel
            (name 'ffab)
            ;; Mirror https://github.com/Hellseher/guix-channel
            (url "https://git.sr.ht/~hellseher/ffab"))
           %default-channels)


<a id="org1ae73a7"></a>

## Use as build/install source

    ~$ git clone https://git.sr.ht/~hellseher/ffab
    ~$ cd ffab
    ~$ guix build -L . python-sunpy


<a id="org71462d0"></a>

# References

-   **Guix Git :** <https://git.savannah.gnu.org/cgit/guix.git> Read only git repository hosted at Savanha.
-   **Guix CI:** -   <https://ci.guix.gnu.org> Main CI and substitute and substitute server
    -   <https://bordeaux.guix.gnu.org/> Secondary substitute server
-   **Guix HPC:** <http://hpc.guix.info/> Reproducible software deployment for high-performance computing.
-   **Guix Data Service:** <https://data.guix.gnu.org/>
-   **Guix QA Service:** <https://qa.guix.gnu.org/>


<a id="org920e349"></a>

## Guix channels

-   <https://github.com/flatwhatson/guix-channel>
-   **nonguix:** Guix channel for packages that can&rsquo;t be included upstream. Please do NOT promote or
    refer to this repository on any official Guix communication channels.
    <https://gitlab.com/nonguix/nonguix>
-   **guixrus:** Curated collection of packages with goal to promote them to upastream
    <https://sr.ht/~whereiseveryone/guixrus/>
-   **Guix Gaming Channels:** A collection of gaming-oriented channels for Guix
    <https://gitlab.com/guix-gaming-channels>
-   **Guix Science:** Free scientific packages for GNU Guix <https://github.com/guix-science/guix-science>
    and non-free scientific packages for GNU Guix <https://github.com/guix-science/guix-science-nonfree>
-   **Emacs channel:** Guix channel for automatically generated emacs packages
    <https://github.com/babariviere/guix-emacs>


<a id="org5305d11"></a>

## etc

-   <https://github.com/UMCUGenetics/guix-additions>
-   <https://github.com/ryanprior/guix-packages>
-   <https://github.com/BIMSBbioinfo/guix-bimsb>
-   <https://github.com/techenthusiastsorg/awesome-guix>

