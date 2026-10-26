---
title: Installing modules from the web
---

{% include menu.html %}

You can write your own modules. But the Raku community also publishes many modules. There are modules for many things, from web frameworks to data formats. You can install them and use them in your programs.

## Installing with `zef`

You install modules with `zef`. `zef` is the standard module manager. It comes with Rakudo. To install a module, give `zef` the name of the module:

```console
$ zef install JSON::Fast
```

`zef` downloads the module. It also downloads everything that the module needs. Next, it runs the tests of the module. Then it installs the module. After that, the module is on the search path automatically. So a program can load it with just `use`. You do not need the `-I` option:

```raku
use JSON::Fast;
```

You can also search the ecosystem. The ecosystem is all the modules that people publish. And you can update or remove modules:

```console
$ zef search Test
$ zef uninstall JSON::Fast
```

## Where modules come from

Published modules are in the Raku _ecosystem_. You can look through it on the website [raku.land](https://raku.land). The website lists the available distributions. A distribution holds one or more modules. The website also shows their documentation.

## `META6.json`

A distribution for sharing has a file with a description. The file is called `META6.json`. It has the name and the version of the distribution. It lists the modules in the distribution. It also lists the other distributions that it needs. `zef` reads this file. So it knows what to install. It also knows how the parts fit together. You may want to publish your own module. Then give it a correct `META6.json`. With this file, everyone else can install your module.

{% include nav.html %}
