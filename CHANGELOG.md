## Unreleased (no breaking changes)

Authors: Kris Leech, Marc Ignacio, Ahmed Abdel Razzak, kmehkeri, Jake Hoffner

6fa8d2d jake hoffner 2014-02-28 added custom rspec matcher
5e3aafb Kris Leech 2014-06-21 Merge pull request #59 from andyw8/patch-1
893be41 Andy Waite 2014-06-21 Use new RSpec 'expect' syntax in README example
fb1b3e9 Kris Leech 2014-06-02 Remove obsolete comment
39ea946 Kris Leech 2014-06-02 Merge pull request #54 from artmees/master
0a8b233 Kris Leech 2014-06-02 Merge pull request #55 from padi/update_travis
a2dc5fe Marc Ignacio 2014-06-02 Update ruby 2.1 to latest patch
419eebb Ahmed Abdel Razzak 2014-05-30 Respond to krisleech/wisper#47 issue -- update to use rspec 3 syntax
9c15c15 Kris Leech 2014-05-23 Fix rbx on Travis
26e8bdf Kris Leech 2014-05-23 update to latest rspec 3 release candidate
c0fcba7 Kris Leech 2014-05-03 Merge pull request #51 from krisleech/update-travis
359f1f3 Kris Leech 2014-05-02 Update Travis to include Ruby 2.1 and HEAD builds. Remove `jruby-20mode` since there is no such thing.
4658bc3 Kris Leech 2014-04-24 Merge pull request #45 from kmehkeri/master
ab59e20 kmehkeri 2014-04-23 RSpec new expect syntax for temporary_global_listeners_spec.rb
741e828 kmehkeri 2014-04-14 Temporary global listeners are cleared after an exception was raised in block
7f5d934 Kris Leech 2014-01-28 Merge pull request #39 from krisleech/coveralls
8bd2d53 Kris Leech 2014-01-24 add coveralls; reports code coverage after Travis build as Github comment [SKIP CI]
f0f1528 Kris Leech 2014-01-24 Remove version constraint from Gemfile example so we don't have to remember to update the README when bumping the minor version. [SKIP CI]
6ee217b Kris Leech 2014-01-24 Add "Gem Version" badge to README

## 1.3.0 (released Jan 18th)

Authors: Kris Leech, Yan Pritzker, Charlie Tran

d9c8690 Kris Leech 2014-01-03 finish: Allow listeners to be globally subscribed to all instances of a class and its subclasses [#31]
aa30bc7 Kris Leech 2014-01-16 Merge pull request #36 from reverbdev/rspec-3
63787b2 Yan Pritzker 2014-01-16 Updated specs to pass under rspec-3
e5d67ae Kris Leech 2014-01-03 Merge branch 'on-prefix'
8a169ba Kris Leech 2014-01-01 finish: Allow broadcast events to be prefixed with "on" [#30]
545918d Kris Leech 2014-01-02 Merge branch 'fix-travis-rbx-build'
0f3a0d6 Kris Leech 2014-01-02 fix broken travis rbx build
f0447b6 Kris Leech 2013-10-29 Merge pull request #29 from charlietran/patch-1
6e08aa4 Charlie Tran 2013-10-29 Allow stubbed publisher method to accept arbitrary args
4ed05c7 Kris Leech 2013-10-07 Merge branch 'master' of github.com:krisleech/wisper

## 1.2.1 (7th Oct 2013)

Authors: Kris Leech, Tomasz Szymczyszyn, Alex Heeton

70787b9 Kris Leech 2013-10-07 Merge pull request #27 from kammerer/master
3530e49 Tomasz Szymczyszyn 2013-10-06 Wisper.add_listener now accepts options.
f8ef017 Kris Leech 2013-10-06 Merge branch 'fix-ci-deps'
38de5da Kris Leech 2013-10-06 exclude rake, flay and simplecov from being installed on CI env and remove guard dependency [#27]
1b5febc Kris Leech 2013-09-20 Merge branch 'master' of github.com:krisleech/wisper
8900f4c Kris Leech 2013-09-20 Improve README and code examples [ci skip]
98bec2d Kris Leech 2013-08-10 Merge pull request #24 from heeton/master
f8adf99 Alex Heeton 2013-08-10 Update gem version used in README instructions
10cdeb3 Kris Leech 2013-07-22 fixes: License missing from gemspec [#21] [ci skip]

## 1.2.0 (21st July 2013)

Authors: Kris Leech, Darren Coxall

7440ebc Kris Leech 2013-07-21 remove redundant return value
fdfe71d Darren Coxall 2013-07-18 Added support for multiple event reaction.
ada8fd0 Kris Leech 2013-07-20 fix failing spec due to misuse of method stubbing
ce7bccc Kris Leech 2013-06-10 clear global subscribers after every spec
73504be Kris Leech 2013-06-10 rename `GlobalListeners.add_listener` to `GlobalListeners.add` and deprecate `add_listener`.
a00329e Kris Leech 2013-06-10 Finishes: Allow global listeners to be added using `Wisper.add_listener` [17]

## 1.1.0 (7th June 2013)

Authors: Kris Leech, chatgris

2208298 Kris Leech 2013-06-07 Merge pull request #16 from krisleech/temporary-listeners
d114993 Kris Leech 2013-06-07 add note about threadsafty [ci skip]
7e60048 Kris Leech 2013-06-07 Add use case for temporary listeners
226f513 Kris Leech 2013-06-07 * Remove `Singleton` since `Thread.current[key]` is global (to the thread) anyway * Add spec to assert temporary listeners are thread local
349171b Kris Leech 2013-05-29 remove `publisher_class` method which is already in spec_helper. It appeared from the future after rewriting history using rebase.
90990d1 Kris Leech 2013-05-29 * Allow temporary listeners to be specified as arguments instead of an array * Add method to Wisper for adding temporary listeners * Update README
dfd29b2 Kris Leech 2013-05-29 Fix spec in MRI 1.9.2, passing a spec double, which does not respond to `to_a`, to `Array()` causes unexpected message error.
348763b Kris Leech 2013-05-29 Allow subscribing of listener(s) for the duration of a block [8]
2748ca8 Kris Leech 2013-06-07 use a better ActiveRecord example and link to Wiki
31b071e Kris Leech 2013-05-29 Add tags file to .gitignore so ag (silver searcher) also ignores them [ci skip]
a1d7891 Kris Leech 2013-05-29 Merge branch 'anonymous-class-in-specs'
2f0b42f Kris Leech 2013-05-29 Use anonymous classes with `Wisper::Publisher` included to create publishers in specs
aa9e3dd Kris Leech 2013-05-22 Merge branch 'v2.0' Despite the branch name, this isn't v2.0 since it has been made to be backwards compatible.
0210f36 Kris Leech 2013-05-22 Instead of raising an exception when old syntax used handle it maintaining backwards compatibility, meaning we do not have to go to v2.0 yet.
7f260bf Kris Leech 2013-05-22 Raise more descriptive exception message [ci skip]
d9ab4f2 Kris Leech 2013-05-18 Add Ruby 2.0.0 for MRI and JRuby
72f4673 Kris Leech 2013-05-15 Move development dependencies in Gemfile in to a 'development' group.
043965a Kris Leech 2013-05-14 add spec for .add_listener alias
7929c6c Kris Leech 2013-05-14 #listeners returns a collection of listeners, not registrations.
703b867 Kris Leech 2013-05-14 Raise when Wisper is included (old syntax) instead of Wisper::Publisher (new syntax) Rename wisper_spec to wisper/publisher_spec
b79545d Kris Leech 2013-05-14 rename module which is included from Wisper to Wisper::Publisher
8eb6076 Kris Leech 2013-05-14 Merge branch 'immutable_collection'
f87b0ae Kris Leech 2013-05-14 `#listeners` returns all listeners, both local and global. freeze the collection returned by `#listeners` (since mutating it will not have the desired effect)
c495298 Kris Leech 2013-05-14 Merge pull request #12 from chatgris/threadsafe
38c7783 chatgris 2013-05-14 Fix a potential threadsafe issue
ea21c55 Kris Leech 2013-05-10 Merge pull request #11 from krisleech/remove_async
3289013 Kris Leech 2013-05-10 remove async/celluloid
6fb19a1 Kris Leech 2013-05-06 Merge pull request #10 from krisleech/threadsafe-global-listeners
5b39a64 Kris Leech 2013-05-06 Add note about threadsafety to README [skip ci]
2092815 Kris Leech 2013-05-06 Fixes: Make global listeners getter and setter threadsafe [9]

## 1.0.1 (2nd May 2013)

Authors: Kris Leech, Yan Pritzker

30d8c4e Kris Leech 2013-05-02 fixes: `require': cannot load such file -- celluloid/autostart (LoadError) when Celluloid is not installed [7]
af78f24 Kris Leech 2013-04-25 Reword README a little and simplify examples [skip ci]
a226b83 Kris Leech 2013-04-22 Recommend pinning to version which will not introduce breaking changes. [skip ci]
e55c4cf Kris Leech 2013-04-21 Update Travis CI badge to show build status for master branch only
76aefaf Kris Leech 2013-04-15 Merge pull request #5 from krisleech/transparent_celluloid
dfc373c Kris Leech 2013-04-14 Allow async publishing without having to add Celluloid to listeners, instead the listener is wrapped at runtime.
40664d6 Kris Leech 2013-04-14 Merge pull request #3 from krisleech/celluloid
c6dcea2 Kris Leech 2013-04-14 hurt the speed of the specs less by reducing sleep
8fe4407 Kris Leech 2013-04-14 add a plea for help
50503cd Kris Leech 2013-04-14 Make it clear this feature is experimental and not using it properly will leak memory
5b49840 Kris Leech 2013-04-11 Add support for async publishing via compatibility with Celluloid
c3ecfbf Kris Leech 2013-04-14 add missing ruby syntax highlighting to README
27ed260 Kris Leech 2013-04-14 remove SQLite database (Grrr...)
245f508 Kris Leech 2013-04-14 Merge pull request #4 from krisleech/global-subscribers
402cac2 Kris Leech 2013-04-14 fix merge conflict
6088325 Kris Leech 2013-04-14 add example of global listeners to README
9eaddd0 Kris Leech 2013-04-14 tidy up spec
9ce1f84 Kris Leech 2013-04-08 first thoughts on adding global listeners, these are listeners that do not need adding to each publisher, but get every broadcast.
8e97ee3 Kris Leech 2013-04-14 Make examples more concrete.
8f9d076 Kris Leech 2013-04-11 assert the entire chain is called
67dff31 Kris Leech 2013-04-10 Merge pull request #2 from reverbdev/stub-wisper-publisher
9c50115 Yan Pritzker 2013-04-10 Integrate stub_wisper_publisher rspec helper [Fix #1]
b4840c9 Kris Leech 2013-04-08 first thoughts on adding global listeners, these are listeners that do not need adding to each publisher, but get every broadcast.
9c76bcd Kris Leech 2013-04-08 move duplicate var assignment in to a let block

## 1.0.0 (7th April 2013)

Authors: Kris Leech

* Refactor specs
* Refactor registrations
* Add `with` argument to `subscribe`
* Improve README examples
* Allow subscriptions to be chainable
* Add `on` syntax
* Remove support for Ruby 1.8.7
* Add badges to README

## 0.0.2 (30th March 2013)

Authors: Kris Leech

* Remove the ActiveSupport dependency
* Fix syntax highlighting in README

## 0.0.1 (30th March 2013)

Authors: Kris Leech

* README
* Registration of objects and blocks
