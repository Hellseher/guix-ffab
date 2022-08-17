# Table of Contents

1.  [Project structure and layout](#org546084d)
2.  [Installation](#orgd416864)
    1.  [Use as channel](#orgfc03ac8)
    2.  [Use as build/install source](#org7e4365a)
3.  [References](#org2f0fd19)
    1.  [Guix channels](#orgec2d38b)
    2.  [etc](#org593810f)

*FFAB :: Flock Full of Aleatory Burden*

[![builds.sr.ht status](https://builds.sr.ht/~hellseher/ffab.svg)](https://builds.sr.ht/~hellseher/ffab?)

This repository contains patches contributed to <guix-patches@gnu.org> and packaging progress. It
also can be used as stand alone Guix channel.

It&rsquo;s concentraited on Astronomical/Astrophisical, Common Lisp, Golan, Python related packages.

`master` branch should be buildable all the time, `wip-` could be to be broken.


<a id="org546084d"></a>

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


<a id="orgd416864"></a>

# Installation

All examples are based on assumptions that `guix` is the main system or available as package
manager.


<a id="orgfc03ac8"></a>

## Use as channel

`/.config/guix/channels.scm`

    (cons* (channel
            (name 'ffab)
            ;; Mirror https://github.com/Hellseher/guix-channel
            (url "https://git.sr.ht/~hellseher/ffab"))
           %default-channels)


<a id="org7e4365a"></a>

## Use as build/install source

    ~$ git clone https://github.com/Hellseher/guix-channel
    ~$ guix build -L ./guix-channel pgloader


<a id="org2f0fd19"></a>

# References

-   <http://hpc.guix.info/>


<a id="orgec2d38b"></a>

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


<a id="org593810f"></a>

## etc

-   <https://github.com/UMCUGenetics/guix-additions>
-   <https://github.com/ryanprior/guix-packages>
-   <https://github.com/BIMSBbioinfo/guix-bimsb>
-   <https://github.com/techenthusiastsorg/awesome-guix>

