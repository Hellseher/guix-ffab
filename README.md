
# Table of Contents

1.  [Project structure and layout](#org18b9fd7)
2.  [Installation](#orgc3ee986)
    1.  [Use as channel](#org292861b)
    2.  [Use as build/install source](#org4d702f2)
3.  [References](#orgf260390)
    1.  [Guix channels](#orge350637)
    2.  [etc](#orgbc599ab)

*FFAB :: Flock Full of Aleatory Burden*

[![builds.sr.ht status](https://builds.sr.ht/~hellseher/ffab.svg)](https://builds.sr.ht/~hellseher/ffab?)

This repository contains packaging process and patches contributed to <guix-patches@gnu.org>. It
also can be used as stand alone Guix channel.

The main target is to collect packages related to Astronomy, Astrophysics and group of languages
such as **Common Lisp**, **Golan** and **Python**.

`master` branch contains of packages passed lint and build procedure and is intended to be save to
use all the time, `wip-` branches might be broken on some stage.


<a id="org18b9fd7"></a>

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

-   **./issues.org:** Tracks all sent patches to <guix-patches@gnu.org>
-   **./TODO.md:** Generated report from packaging process in `org/` directory.
-   **./Makefile:** Contains CI aware lint and build targets with convenient tooling for local build.

    :guix-commit 983906ab72307a5b848a54233b30d9744356de07
    :accepted 124
    :pending 170
    
    :astronomy 33
    :golang 47
    :lisp 48
    :python 15
    :misc 23
    
    :date Thu 17 Nov 22:09:28 GMT 2022

Any packages with suffix **-ffab** are meant to be accepted in Guix upstream but have kind of
modifications e.g. newer version, enabled text etc.


<a id="orgc3ee986"></a>

# Installation

All examples are based on assumptions that `guix` is the main system or available as package
manager.


<a id="org292861b"></a>

## Use as channel

`/.config/guix/channels.scm`

    (cons* (channel
            (name 'ffab)
            ;; Mirror https://github.com/Hellseher/guix-channel
            (url "https://git.sr.ht/~hellseher/ffab"))
           %default-channels)


<a id="org4d702f2"></a>

## Use as build/install source

    ~$ git clone https://git.sr.ht/~hellseher/ffab
    ~$ cd ffab
    ~$ guix build -L . python-sunpy


<a id="orgf260390"></a>

# References

-   **Guix Git :** <https://git.savannah.gnu.org/cgit/guix.git> Read only git repository hosted at Savanha.
-   **Guix CI:** -   <https://ci.guix.gnu.org> Main CI and substitute and substitute server
    -   <https://bordeaux.guix.gnu.org/> Secondary substitute server
-   **Guix HPC:** <http://hpc.guix.info/> Reproducible software deployment for high-performance computing.
-   **Guix Data Service:** <https://data.guix.gnu.org/>
-   **Guix QA Service:** <https://qa.guix.gnu.org/>


<a id="orge350637"></a>

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


<a id="orgbc599ab"></a>

## etc

-   <https://github.com/UMCUGenetics/guix-additions>
-   <https://github.com/ryanprior/guix-packages>
-   <https://github.com/BIMSBbioinfo/guix-bimsb>
-   <https://github.com/techenthusiastsorg/awesome-guix>

