# ℓGTK

*An LFE GTK 2.0 API that wraps the Erlang gtknode library*

[![][lgtk-logo]][lgtk-logo-large]

[lgtk-logo]: resources/images/lGTK-logo.png
[lgtk-logo-large]: resources/images/lGTK-logo-large.png


## Introduction

As od as it may seem, LFE and GTK are actually a very good combination. LFE is a language that runs on a VM that was built to support highly-concurrent communications betewen native (Erlang/BEAM) and non-native (Ports) code. Due to its inherent message passing, LFE supports asynchronous calls. In addition to generic software servers, LFE also supports event servers -- both are useful integrating with GUI main loops and managing signals. Furthermore, due to LFE's support of distribution, it is possible to create GTK GUIs that manage or interact with light-weight language processes that run on multiple cores or even on remote systems.


### ℓGTK vs. gtknode

Or: *Why create a wrapper?* The answer to this is quite simple: though the use of gtknode is very elegant and simple (espcially if you have long experience in the Erlang world), the approach is not very Lisp-y. Additionally, if you *don't* come from the Erlang world, the use of gtknode in LFE will seem quite strange.

Here is an example call using gtknode:

```cl
(! name `#(,(self) (#(Gtk_statusbar_push `(,widget-id ,sb-stx-id "Connected"))))
(receive
 (`#(,name #(reply (#(ok ,rep)y))))
 reply)
```

Here is the same call in ℓGTK:

```cl
(gtk.statusbar:push name 'statusbar1 sb-ctx-id "Connected")
```

This library attempts to provide LFE hackers with a natural-feeling API (one that closely mirros the APIs in other GTK language bindings) for creating GTK apps that run on the Erlang VM.


### Caveat

**Here there be dragons!** This library is a work in progress, with nowhere near complete support of the GTK 2.0 API. That being said, adding new functions is *mostly* a trivial exercise; if you are comfortable with the source code, you may enjoy submitting patches that add support for your favourite missing GTK functions.


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
