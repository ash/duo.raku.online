---
title: 'Solutio: Salve, Mundi!'
---

{% include menu.html %}

Nunc longe in cursu sumus. Sed ad hoc programma redire debemus. Cur? Modo novum modum scribendi programmata Raku didicimus.

## Codex 1

```raku
sub MAIN() {
    say 'Salve, Mundi!';
}
```

🦋 Invenire programmatum in archivo [hello-world.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/hello-world.raku).

## Codex 2

```raku
unit sub MAIN;
say 'Salve, Mundi!';
```

🦋 Invenire programmatum in archivo [hello-world-unit.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/hello-world-unit.raku).

## Exemplum

Curre unum ex duobus programmatibus:

```console
$ raku exercises/the-main-function/hello-world.raku
Salve, Mundi!

$ raku exercises/the-main-function/hello-world-unit.raku
Salve, Mundi!
```

{% include nav.html %}
