==========
Mac Config
==========


TODO
====

- Uninstall MacPorts
- Disable Cpas lock Key
- Install

  - JSLint(Hint)
  - Perl::Critic, Perl::Tidy
  - Pychecker? PyLint? PEP8?
  - PythonTidy
  - Pelusa
  - HTML Tidy
  - CSS tidy
  - Shell Beautifier


Directry Tree
=============

::

  /
  +- usr/
  |  +- bin/
  |  |  +- java
  |  |  +- perl
  |  |  +- php
  |  |  +- pyhon
  |  |  +- ruby
  |  |
  |  +- local/
  |  |  +- bin/
  |  |  |  +- dot
  |  |  |  +- io
  |  |  |  +- node
  |  |  |  +- npm
  |  |  |  +- scala
  |  |  |  +- gosh
  |  |  |  +- lua
  |  |  |  +- coffee

  ~/
  +- github/
  +- local/
  |  +- bin/
  |  +- virtualenv/
  |  +- perlbrew/
  |
  +- .rvm/


Applications/Tools
==================

- `KeePass <http://www.keepassx.org/>`_
- `StartupSound.prefPane <http://www5e.biglobe.ne.jp/~arcana/StartupSound/BETA/index.en.html>`_
- `MacPorts <http://www.macports.org/>`_ -- port selfupdate
- `GitHub for mac <http://mac.github.com/>`_
- `Last.fm <http://www.last.fm/download>`_
- `CalmXav <http://www.clamxav.com/>`_
- `Flash Player <http://get.adobe.com/flashplayer/>`_
- `Seashore <http://seashore.sourceforge.net/The_Seashore_Project/About.html>`_
- AppStore

  - `Skitch <http://itunes.apple.com/jp/app/skitch/id425955336?mt=13>`_
  - `Xcode <http://itunes.apple.com/jp/app/xcode/id497799835?mt=12>`_
    
    - Command Line Tools


Homebrew
--------

`Homebrew <http://mxcl.github.com/homebrew/>`_

::

  $ brew install cherokee
  $ brew install graphviz
  $ brew install autconf

Screen-Devel
------------

::

  $ git clone git://git.savannah.gnu.org/screen.git
  $ cd screen/src
  $ ./autogen.sh
  $ ./configure --prefix=$HOME/local
  $ make
  $ make install


Programming Languages
=====================


Perl
----

::

  $ echo "export PERLBREW_ROOT=~/local/perlbrew/" >> ~/.bash_profile
  $ source ~/.bash_profile
  $ curl -kL http://install.perlbrew.pl | bash
  $ ~/local/perlbrew/bin/perlbrew init
  $ perl -v
  This is perl 5, version 12, subversion 3 (v5.12.3) built for darwin-thread-multi-2level
  $ ~/local/perlbrew/bin/perlbrew install perl-5.16.0


Python
------

::

  $ sudo port install python27
  $ sudo easy_install virtualenv
  $ sudo easy_install virtualenvwrapper
  $ mkdir -p ~/local/virtualenv
  $ virtualenv -p /opt/local/bin/python3.2 ~/local/virtualenv/python3.2
  $ virtualenv -p /usr/bin/python2.7 ~/local/virtualenv/python2.7
  $ source ~/local/virtualenv/python3.2/bin/activate
  $ python -V
  Python 3.2.3
  $ source ~/local/virtualenv/python2.7/bin/activate
  $ pyhon -V
  Python 2.7.1


Ruby
----

::

  $ curl -L https://get.rvm.io | bash -s stable --ruby
  $ source ~/.bash_profile
  $ rvm install jruby-1.6.7
  $ rvm use jruby-1.6.7
  Using /Users/grever/.rvm/gems/jruby-1.6.7
  $ ruby -v
  jruby 1.6.7 (ruby-1.8.7-p357) (2012-02-22 3e82bc8) (Java HotSpot(TM) 64-Bit Server VM 1.6.0_33) [darwin-x86_64-java]
  $ rvm reset
  $ ruby -v
  ruby 1.8.7 (2011-12-28 patchlevel 357) [universal-darwin11.0]


Node.js
-------

::

  $ brew install node
  $ curl http://npmjs.org/install.sh | sh
  $ npm install -g coffee-script


Scala
-----

::

  $ brew install scala


Haskell
-------

::

  $ brew install ghc


Io
--

::

  $ brew install io


Lua
---

::

  $ brew install lua


Gauche
------

::

  $ brew install gauche


Haxe
----

::

  $ brew install haxe


