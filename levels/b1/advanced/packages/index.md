---
title: Packages and namespaces
---

{% include menu.html %}

A _namespace_ is a named container. It holds other named things, such as variables and subroutines. It stops names from clashing: `Maths::pi` and `Physics::pi` can both exist without a conflict. A _package_ is the most basic kind of namespace.

You have already used a namespace without calling it one: every `module` creates a namespace. This section looks at packages directly. You will also see how to reach into a namespace from outside. For that, you use `our` variables and the `::` separator.

{% include nav.html %}
