---
title: Packages and namespaces
---

{% include menu.html %}

A _namespace_ is a container with a name. It holds other things with names, for example, variables and subroutines. With namespaces, two things can have the same name without a problem. `Maths::pi` and `Physics::pi` can both exist. A _package_ is the simplest kind of namespace.

You already used a namespace, but you did not call it that. Every `module` creates one. This section looks at packages directly. It also shows how to get into a namespace from outside. For this, you use `our` variables and the separator `::`.

{% include nav.html %}
