---
title: 'Solution: Ciao, Mondo!'
---

{% include menu.html %}

Dopo un lungo viaggio attraverso il corso, torniamo di nuovo a questo programma. Questo perché abbiamo appena imparato un nuovo modo di scrivere programmi in Raku.

## Codice 1

```raku
sub MAIN() {
    say 'Hello, World!';
}
```

🦋 Trova il programma nel file [hello-world.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/hello-world.raku).

## Codice 2

```raku
unit sub MAIN;
say 'Hello, World!';
```

🦋 Trova il programma nel file [hello-world-unit.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/hello-world-unit.raku).

## Esempio

Esegui uno dei programmi:

```console
$ raku exercises/the-main-function/hello-world.raku
Hello, World!

$ raku exercises/the-main-function/hello-world-unit.raku
Hello, World!
```

{% include nav.html %}
