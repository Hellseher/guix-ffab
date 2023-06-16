
# Table of Contents

1.  [Project structure and layout](#orgb5e0348)
    1.  [Tags legend](#orga40d719)
2.  [Installation](#org4abf5b0)
    1.  [Use as channel](#orgf6eda96)
    2.  [Use as build/install source](#org655b054)
3.  [References](#org7fd863a)
    1.  [Guix channels](#org6f699d2)
    2.  [etc](#org80607a2)

*FFAB :: Flock Full of Aleatory Burden*

[![builds.sr.ht status](https://builds.sr.ht/~hellseher/ffab.svg)](https://builds.sr.ht/~hellseher/ffab?)

This repository contains packaging process and patches contributed to <guix-patches@gnu.org>. It
also can be used as stand alone Guix channel.

The main target is to collect packages related to Astronomy, Astrophysics and group of languages
such as **Common Lisp**, **Golan** and **Python**.

`master` branch contains packages passed lint and build procedures and is intended to be save to
use all the time, `wip-` branches might be broken on some stage.


<a id="orgb5e0348"></a>

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

    :guix-commit 6e1215fb9c03ccb4a2d4440990aee5a66a935268
    :accepted 192
    :pending 143
    
    :astronomy 7
    :golang 70
    :lisp 6
    :python 12
    :misc 21
    
    :date Fri 16 Jun 23:32:25 BST 2023

Any packages with suffix **-ffab** are meant to be accepted in Guix upstream but have kind of
modifications e.g. newer version, enabled tests etc.


<a id="orga40d719"></a>

## Tags legend

There is an essential priority tag set is applied to manager the order of packaging for large
project and ease the pace of patch preparation. They are not strict and just intended to visualize
the current effort

-   **p1:** In the head of the packaging queue, tried to packed, resolving issues with dependencies and
    eventually packed.
-   **p2:** The patch is prepared from `guix` checkout.
-   **p3:** The patch set is sent for review.
-   **p4:** Initial estimation is made for the future packaging steps and resolving dependencies issues.
-   **p5:** Dormant or not so interested right now.


<a id="org4abf5b0"></a>

# Installation

All examples are based on assumptions that `guix` is the main system or available as package
manager.


<a id="orgf6eda96"></a>

## Use as channel

`/.config/guix/channels.scm`

    (cons* (channel
            (name 'ffab)
            ;; Mirror https://github.com/Hellseher/guix-channel
            (url "https://git.sr.ht/~hellseher/ffab"))
           %default-channels)


<a id="org655b054"></a>

## Use as build/install source

    ~$ git clone https://git.sr.ht/~hellseher/ffab
    ~$ cd ffab
    ~$ guix build -L . python-sunpy


<a id="org7fd863a"></a>

# References

Main official resources:

-   **VCS:** <https://git.savannah.gnu.org/cgit/guix.git> Read only git repository hosted at Savanha.
-   **CI and Substitutes:** -   <https://ci.guix.gnu.org> Main CI and substitute and server
    -   <https://bordeaux.guix.gnu.org/> Secondary substitute server
-   **HPC:** <http://hpc.guix.info/> Reproducible software deployment for high-performance computing.
-   **Data Service:** <https://data.guix.gnu.org/>
-   **QA Service:** <https://qa.guix.gnu.org/>
-   **Issues:** <https://issues.guix.gnu.org/>


<a id="org6f699d2"></a>

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


<a id="org80607a2"></a>

## etc

-   <https://github.com/ryanprior/guix-packages>
-   <https://github.com/BIMSBbioinfo/guix-bimsb>
-   <https://github.com/techenthusiastsorg/awesome-guix>

