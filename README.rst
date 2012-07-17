==========
Mac Config
==========


TODO
====

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

  ~/
  +- github/
  +- local/
  |  +- bin/
  |  +- virtualenv/
  |  +- perlbrew/
  |
  +- var/
  |  +- checkout/   -- git, mercurial, svn, ...
  |
  +- .rvm/

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


Settings
========

- Disable Caps Lock Key
  `How to Disable Caps Lock on Mac OS X - How-To Geek <http://www.howtogeek.com/?post_type=post&p=38828>`_


Applications/Tools
==================

- Development

  - `GitHub for mac <http://mac.github.com/>`_
  - `Eclipse <http://www.eclipse.org/>`_
- Utilities

  - `KeePass <http://www.keepassx.org/>`_
  - `StartupSound.prefPane <http://www5e.biglobe.ne.jp/~arcana/StartupSound/BETA/index.en.html>`_
  - `ClamXav <http://www.clamxav.com/>`_
- Entertainment

  - `Last.fm <http://www.last.fm/download>`_
  - `Seashore <http://seashore.sourceforge.net/The_Seashore_Project/About.html>`_
  - `Flash Player <http://get.adobe.com/flashplayer/>`_
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
  $ brew install autmake
  $ brew install mercurial


Screen-Devel
------------

::

  $ git clone git://git.savannah.gnu.org/screen.git
  $ cd screen/src
  $ ./autogen.sh
  $ ./configure --prefix=$HOME/local
  $ make
  $ make install


Uninstall MacPorts
------------------

::

  $ sudo port -f uninstall installed
  $ sudo rm -rf /opt/local
  $ sudo rm -rf /Library/Tcl/macports1.0
  $ sudo rm -rf /private/var/db/receipts/org.macports.MacPorts.*

Ref) http://satomacoto.blogspot.jp/2009/05/macports.html


Programming Languages
=====================


Perl
----

::

  $ echo "export PERLBREW_ROOT=~/local/perlbrew/" >> ~/.bash_profile
  $ source ~/.bash_profile
  $ curl -kL http://install.perlbrew.pl | bash
  $ ~/local/perlbrew/bin/perlbrew init
  $ ~/local/perlbrew/bin/perlbrew install perl-5.16.0
  $ ~/local/perlbrew/bin/perlbrew use perl-5.16.0
  $ perl -v
  This is perl 5, version 16, subversion 0 (v5.16.0) built for darwin-2level
  $ exit
  $ perl -v
  This is perl 5, version 12, subversion 3 (v5.12.3) built for darwin-thread-multi-2level


Python
------

::

  $ brew install python
  $ brew install python3
  $ cd /usr/local/bin
  $ ln -sf ../Cellar/python3/3.2.3/bin/python3 python3
  $ cd ~/
  $ brew install pypy
  $ brew install jython
  $ sudo easy_install virtualenv
  $ sudo easy_install virtualenvwrapper
  $ mkdir -p ~/local/virtualenv
  $ virtualenv -p /usr/local/bin/python2.7 ~/local/virtualenv/python2.7
  $ virtualenv -p /usr/local/bin/python3 ~/local/virtualenv/python3
  $ virtualenv -p /usr/local/bin/jython ~/local/virtualenv/jython
  $ virtualenv -p /usr/local/bin/pypy ~/local/virtualenv/pypy
  $ source ~/local/virtualenv/python3/bin/activate
  $ python -V
  Python 3.2.3
  $ source ~/local/virtualenv/python2.7/bin/activate
  $ pyhon -V
  Python 2.7.3
  $ deactivate
  $ python -V
  Python 2.7.1
  $ echo "source ~/local/virtualenv/python2.7/bin/activate" >> ~/.bash_profile


Ruby
----

::

  $ curl -L https://get.rvm.io | bash -s stable --ruby
  $ source ~/.bash_profile
  $ rvm install ruby-1.9.3
  $ rvm install jruby-1.6.7
  $ rvm use jruby-1.6.7
  Using /Users/grever/.rvm/gems/jruby-1.6.7
  $ ruby -v
  jruby 1.6.7 (ruby-1.8.7-p357) (2012-02-22 3e82bc8) (Java HotSpot(TM) 64-Bit Server VM 1.6.0_33) [darwin-x86_64-java]
  $ rvm reset
  $ ruby -v
  ruby 1.8.7 (2011-12-28 patchlevel 357) [universal-darwin11.0]
  $ rvm use --default ruby-1.9.3


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


