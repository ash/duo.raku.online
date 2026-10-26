---
title: zef and the ecosystem
---

{% include menu.html %}

`zef` installs Raku modules. You already used it to install modules by their names. It also works with a distribution in a local directory. Go into the directory of a distribution. From there, you can test and install it directly:

```
zef test .
zef install .
```

`zef test .` runs the files under `t/`. `zef install .` installs the distribution into your Raku. Then other programs can `use` it. You can also install by name, for example, `zef install Cro`. This does the same thing. But first, it downloads the distribution from the ecosystem.

You may want to **publish** your own distribution. Then other people can install it by name. To do this, you upload it to the ecosystem. People usually use `fez` for this:

```
fez upload
```

This packs the current distribution and sends it to the Raku ecosystem. After that, `zef install Maths::Simple` works for anyone.

> These commands need an installed `zef`/`fez` and the network. To upload, you also need an ecosystem account.

So a shared module goes through three steps. First, you give it the standard layout and a `META6.json`. Next, you test it with `zef test`. Then you publish it with `fez upload`. After that, it is just one more name. Anyone can install it with `zef install`.

{% include nav.html %}
