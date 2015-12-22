# ℓGTK

*An LFE GTK 2.0 API that wraps the Erlang gtknode library*

[![][lgtk-logo]][lgtk-logo-large]

[lgtk-logo]: resources/images/lGTK-logo.png
[lgtk-logo-large]: resources/images/lGTK-logo-large.png


## Introduction

As od as it may seem, LFE and GTK are actually a very good combination. LFE is a language that runs on a VM that was built to support highly-concurrent communications betewen native (Erlang/BEAM) and non-native (Ports) code. Due to its inherent message passing, LFE supports asynchronous calls. In addition to generic software servers, LFE also supports event servers -- both are useful integrating with GUI main loops and managing signals. Furthermore, due to LFE's support of distribution, it is possible to create GTK GUIs that manage or interact with light-weight language processes that run on multiple cores or even on remote systems.

**CAVEAT**: Here there be dragons! This library is a work in progress, with nowhere near complete support of the GTK 2.0 API. That being said, adding new functions is *mostly* a trivial exercise; if you are comfortable with the source code, you may enjoy submitting patches that add support for your favourite missing GTK functions.


## Dependencies

* Erlang
* ``rebar``
* GNU ``make``
* ``libglade2`` and its development files

If you would like to use the dark theme included in ``priv``, you will also need:

* ``gtk2-engines``
* ``gtk2-engines-pixbuf``

Erlang and LFE-specific dependencies will be downloaded automatically when running ``make``.


## Building

```bash
$ make
```

This will:

1. Download all the dependencies
1. Compile source (as well as that of its dependencies), and
1. Bring up a GTK window.


## Usage

TBD
