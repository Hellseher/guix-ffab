
# Table of Contents

1.  [Project structure and layout](#org54889b8)
2.  [Installation](#orgefd3d5b)
    1.  [Use as channel](#org95f213d)
    2.  [Use as build/install source](#orge3df2f0)
3.  [References](#orgcd8bb00)
    1.  [Guix channels](#org20d3ca0)
    2.  [etc](#org91900b0)

*FFAB :: Flock Full of Aleatory Burden*

[![builds.sr.ht status](https://builds.sr.ht/~hellseher/ffab.svg)](https://builds.sr.ht/~hellseher/ffab?)

This repository contains patches contributed to <guix-patches@gnu.org> and packaging progress. It
also can be used as stand alone Guix channel.

It&rsquo;s concentraited on Astronomical/Astrophisical, Common Lisp, Golan, Python related packages.

`master` branch should be buildable all the time, `wip-` could be to be broken.


<a id="org54889b8"></a>

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
    └── tmp
    
    10 directories

-   **issues.org:** tracks all sent patches to <guix-patches@gnu.org>


<a id="orgefd3d5b"></a>

# Installation

All examples are based on assumptions that `guix` is the main system or available as package
manager.


<a id="org95f213d"></a>

## Use as channel

`/.config/guix/channels.scm`

    (cons* (channel
            (name 'ffab)
            ;; Mirror https://github.com/Hellseher/guix-channel
            (url "https://git.sr.ht/~hellseher/ffab"))
           %default-channels)


<a id="orge3df2f0"></a>

## Use as build/install source

    ~$ git clone https://github.com/Hellseher/guix-channel
    ~$ guix build -L ./guix-channel pgloader


<a id="orgcd8bb00"></a>

# References

-   **Guix Git Savanha:** <https://git.savannah.gnu.org/cgit/guix.git>
-   **Guix CI:** <https://ci.guix.gnu.org> Main CI and substitute server
-   **Guix Bordeaux:** <https://bordeaux.guix.gnu.org/> Substitute server
-   **Guix HPC:** <http://hpc.guix.info/> Reproducible software deployment for high-performance computing.


<a id="org20d3ca0"></a>

## Guix channels

-   <https://github.com/flatwhatson/guix-channel>
-   **nonguix:** Guix channel for packages that can&rsquo;t be included upstream. Please do NOT promote or
    refer to this repository on any official Guix communication channels.
    <https://gitlab.com/nonguix/nonguix>
-   **Guix Gaming Channels:** A collection of gaming-oriented channels for Guix
    <https://gitlab.com/guix-gaming-channels>
-   **Guix Science:** Free scientific packages for GNU Guix <https://github.com/guix-science/guix-science>
    and non-free scientific packages for GNU Guix <https://github.com/guix-science/guix-science-nonfree>
-   **Emacs channel:** Guix channel for automatically generated emacs packages
    <https://github.com/babariviere/guix-emacs>


<a id="org91900b0"></a>

## etc

-   <https://github.com/UMCUGenetics/guix-additions>
-   <https://github.com/ryanprior/guix-packages>
-   <https://github.com/BIMSBbioinfo/guix-bimsb>
-   <https://github.com/techenthusiastsorg/awesome-guix>

