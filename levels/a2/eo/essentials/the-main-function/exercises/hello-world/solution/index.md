---
title: 'Solvo: Saluton, Mondo!'
---

{% include menu.html %}

Ni nun estas malproksime en la kurso. Sed ni devas reveni al ĉi tiu programo. Kial? Ni ĵus lernis novan manieron skribi Raku-programojn.

## Kodo 1

```raku
sub MAIN() {
    say 'Saluton, Mondo!';
}
```

🦋 Trovu la programon en la dosiero [hello-world.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/hello-world.raku).

## Kodo 2

```raku
unit sub MAIN;
say 'Saluton, Mondo!';
```

🦋 Trovu la programon en la dosiero [hello-world-unit.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/hello-world-unit.raku).

## Ekzemplo

Rulu unu el la du programoj:

```console
$ raku exercises/the-main-function/hello-world.raku
Saluton, Mondo!

$ raku exercises/the-main-function/hello-world-unit.raku
Saluton, Mondo!
```

{% include nav.html %}
