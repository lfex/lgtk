# lgtk


[![][lgtk-logo]][lgtk-logo-large]

[lgtk-logo]: resources/images/lGTK-logo.png
[lgtk-logo-large]: resources/images/lGTK-logo-large.png

## Dependencies

* Erlang
* ``rebar``
* GNU ``make``
* ``libglade2`` and its development files
* ``gtk2-engines`` and ``gtk2-engines-pixbuf`` to support the dark theme


## Usage

```bash
$ make
```

This will:

1. Download all the dependencies
1. Compile source (as well as that of its dependencies), and
1. Bring up a GTK window.

