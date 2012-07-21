==========
Mac Config
==========


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
  +- tmp/


Settings
========

- Disable Caps Lock Key
  `How to Disable Caps Lock on Mac OS X - How-To Geek <http://www.howtogeek.com/?post_type=post&p=38828>`_

gitconfig::

  $ git config --global user.email "test@example.com"
  $ git config --global user.name "grever"


Applications/Tools
==================

- Development

  - `GitHub for mac <http://mac.github.com/>`_
  - `Eclipse <http://www.eclipse.org/>`_
  - `HTMLTidy <http://tidy.sourceforge.net/>`_
  - `Tidy for HTML5 <https://github.com/w3c/tidy-html5/>`_
  - `Bash Script Beautifier <http://www.arachnoid.com/linux/beautify_bash/index.html>`_
- Utilities

  - `KeePass <http://www.keepassx.org/>`_
  - `StartupSound.prefPane <http://www5e.biglobe.ne.jp/~arcana/StartupSound/BETA/index.en.html>`_
  - `ClamXav <http://www.clamxav.com/>`_
- Entertainment

  - `Last.fm <http://www.last.fm/download>`_
  - `Seashore <http://seashore.sourceforge.net/The_Seashore_Project/About.html>`_
  - `Flash Player <http://get.adobe.com/flashplayer/>`_
- AppStore

  - `Skitch <http://itunes.apple.com/us/app/skitch/id425955336?mt=13>`_
  - `Dash <http://itunes.apple.com/us/app/dash-docs-snippets/id458034879?mt=12>`_
  - `Xcode <http://itunes.apple.com/us/app/xcode/id497799835?mt=12>`_
    
    - Command Line Tools


Homebrew
--------

`Homebrew <http://mxcl.github.com/homebrew/>`_

::

  $ brew install wget
  $ brew install tree
  $ brew install w3m
  $ brew install autconf
  $ brew install autmake
  $ brew install mercurial
  $ brew install graphviz
  $ brew install cherokee
  $ brew install scons
  $ brew install colortail
  $ brew install colordiff
  $ brew install gnu-indent


Screen-Devel
------------

::

  $ git clone git://git.savannah.gnu.org/screen.git
  $ cd screen/src
  $ ./autogen.sh
  $ ./configure --prefix=$HOME/local
  $ make
  $ make install

CSSTidy
-------

http://tidy.sourceforge.net/

::

  $ cd csstidy-source-1
  $ scons
  $ mv release/csstidy ~/local/
  $ ln -sf ~/local/csstidy/csstidy ~/local/bin/csstidy



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

  $ export PERLBREW_ROOT=~/local/perlbrew
  $ source ~/.bash_profile
  $ curl -kL http://install.perlbrew.pl | bash
  $ ~/local/perlbrew/bin/perlbrew init
  $ ~/local/perlbrew/bin/perlbrew install-cpanm
  $ ~/local/perlbrew/bin/perlbrew install perl-5.16.0
  $ ~/local/perlbrew/bin/perlbrew use perl-5.16.0
  $ perl -v
  This is perl 5, version 16, subversion 0 (v5.16.0) built for darwin-2level
  $ exit
  $ perl -v
  This is perl 5, version 12, subversion 3 (v5.12.3) built for darwin-thread-multi-2level

.bash_profile::

  export PERLBREW_ROOT=~/local/perlbrew
  PATH=$PATH:${PERLBREW_ROOT}/bin
  source ~/local/perlbrew/etc/bashrc

default::

  $ perlbrew switch perl-5.16.0

CPAN::

  $ cpanm install Perl::Critic
  $ cpanm install Perl::Tidy
  $ cpanm install Class::Accessor
  $ cpanm install Class::Data::Inheritable
  $ cpanm install Mojolicious
  $ cpanm install Template::Toolkit
  $ cpanm install Proc::Daemon


PHP
---

::

  $ brew tap josegonzalez/php
  $ brew install php54
  $ brew install phplint
  $ ln -sf /usr/local/Cellar/php54/5.4.4/bin/php ~/local/bin/php


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

default::

  $ echo "source ~/local/virtualenv/python2.7/bin/activate" >> ~/.bash_profile

pip::

  $ pip install pylint
  $ pip install web.py
  $ pip install django
  $ pip install selenium
  $ pip install PyQuery
  $ pip install sqlobject
  $ pip install pygments
  $ pip install twisted
  $ pip install daemoncmd

easy_install::

  $ easy_install benchmarker


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

default::

  $ rvm use --default ruby-1.9.3

gem::

  $ gem install rails
  $ gem install sinatra
  $ gem install sass

pelusa::

  $ rvm install rbx
  $ rvm use rbx
  $ gem install rdoc
  $ gem install pelusa
  $ export RBXOPT=-X19


Node.js
-------

::

  $ brew install node
  $ curl http://npmjs.org/install.sh | sh

npm::

  $ npm install -g coffee-script
  $ npm install -g jshint


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


