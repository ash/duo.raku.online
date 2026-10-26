---
title: Distributing modules
---

{% include menu.html %}

A module may be useful outside your own computer. Then you can package it as a _distribution_. You can share it through the Raku module ecosystem. Then anyone can install it with `zef`.

This section describes the two parts that make this possible. The first is the `META6.json` file, which describes a distribution. The second is the tools that install and publish it: `zef` and `fez`. These steps are about the ecosystem and the network, not about the language itself. So the examples here show files and commands, not program output.

{% include nav.html %}
