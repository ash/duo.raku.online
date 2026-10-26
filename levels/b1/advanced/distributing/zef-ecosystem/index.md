---
title: zef and the ecosystem
---

{% include menu.html %}

`zef` is the module installer of Raku. You have already used it to install modules by name. It also works with a local distribution directory. Inside a distribution, you can test and install it directly:

```
zef test .
zef install .
```

`zef test .` runs the files under `t/`. `zef install .` installs the distribution into your Raku, so that other programs can `use` it. Installing by name, as in `zef install Cro`, does the same thing. But it first downloads the distribution from the ecosystem.

You can **publish** your own distribution, so that others can install it by name. To do that, you upload it to the ecosystem. The usual tool for this is `fez`:

```
fez upload
```

This packages the current distribution and sends it to the Raku ecosystem. After that, `zef install Maths::Simple` will work for anyone.

> These commands need `zef`/`fez` to be installed and a network connection. Uploading also needs an ecosystem account.

So the life of a shared module has three steps. You lay it out with a `META6.json` and test it with `zef test`. Then you publish it with `fez upload`. From then on, it is just one more name that anyone can `zef install`.

{% include nav.html %}
