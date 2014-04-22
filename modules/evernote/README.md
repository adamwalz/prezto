Evernote
======

Sets up environment for working at Evernote

Evnironment Variables
-------------------------

The variable `$PROJECT_HOME` is the working directory for Evernote development.

    export PROJECT_HOME="$HOME/Developer/Evernote"

The variable `$MAC_HOME` is the root directory of the Evernote for Mac project directory.
It must be set and the directory created before scripts such as natural-search `make mac`
are run. Replace *Developer* with your projects directory.

    export MAC_HOME="$PROJECT_HOME/mac"

Aliases
-------

  - `init_project` to clone an Evernote repository onto your local machine
  - `enstageon` connect evernote for mac to staging environment on etonreve.com
  - `enstageoff` connect evernote for mac to production environment on evernote.com

Authors
-------

*The authors of this module should be contacted via the [issue tracker][1].*

  - [Adam Walz](https://github.com/adamwalz)

[1]: https://github.com/adamwalz/prezto/issues

