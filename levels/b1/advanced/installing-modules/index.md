---
title: Installing modules from the web
---

{% include menu.html %}

You are not limited to the modules that you write yourself. The Raku community has published a large collection of modules. They cover everything from web frameworks to data formats. You can install them and use them in your own programs.

## The `zef` installer

Modules are installed with `zef`, which is the standard module manager. It comes together with Rakudo. To install a module, pass its name to `zef`:

```console
$ zef install JSON::Fast
```

`zef` downloads the module together with everything it depends on. Then it runs the tests of the module and installs it. An installed module is on the search path automatically. So a program can load it with a plain `use`. No `-I` option is needed:

```raku
use JSON::Fast;
```

`zef` can also search the ecosystem. It can update or remove modules as well:

```console
$ zef search Test
$ zef uninstall JSON::Fast
```

## Where modules come from

Published modules are part of the Raku _ecosystem_. You can browse it on the website [raku.land](https://raku.land). It lists the available distributions and their documentation.

## `META6.json`

A distribution that is meant for sharing has a description file called `META6.json`. This file records the name and version of the distribution. It also lists the modules it provides and the other distributions it depends on. `zef` reads this file. From it, `zef` learns what to install and how the parts fit together. If you publish your own module, it needs a correct `META6.json`. That is what lets everyone else install it.

{% include nav.html %}
