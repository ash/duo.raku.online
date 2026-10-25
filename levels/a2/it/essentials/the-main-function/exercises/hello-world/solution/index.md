---
title: 'Solution: Ciao, Mondo!'
---

{% include menu.html %}

Ora siamo molto avanti nel corso. Ma dobbiamo tornare a questo programma. Perché? Abbiamo appena imparato un nuovo modo di scrivere programmi in Raku.

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

Esegui uno dei due programmi:

```console
$ raku exercises/the-main-function/hello-world.raku
Hello, World!

$ raku exercises/the-main-function/hello-world-unit.raku
Hello, World!
```

{% include nav.html %}
