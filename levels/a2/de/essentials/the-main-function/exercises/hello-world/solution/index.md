---
title: 'Solution: Hallo, Welt!'
---

{% include menu.html %}

Wir sind jetzt schon weit im Kurs. Aber wir müssen zu diesem Programm zurückkommen. Warum? Wir haben gerade eine neue Art gelernt, Raku-Programme zu schreiben.

## Code 1

```raku
sub MAIN() {
    say 'Hallo, Welt!';
}
```

🦋 Finde das Programm in der Datei [hello-world.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/hello-world.raku).

## Code 2

```raku
unit sub MAIN;
say 'Hallo, Welt!';
```

🦋 Finde das Programm in der Datei [hello-world-unit.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/hello-world-unit.raku).

## Beispiel

Führe eines der beiden Programme aus:

```console
$ raku exercises/the-main-function/hello-world.raku
Hallo, Welt!

$ raku exercises/the-main-function/hello-world-unit.raku
Hallo, Welt!
```

{% include nav.html %}
