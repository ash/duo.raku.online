---
title: 'Solution: Hallo, Welt!'
---

{% include menu.html %}

Nach einem langen Weg durch den Kurs kommen wir wieder zu diesem Programm zurück. Das liegt daran, dass wir gerade eine neue Art gelernt haben, Raku-Programme zu schreiben.

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

Führe eines der Programme aus:

```console
$ raku exercises/the-main-function/hello-world.raku
Hallo, Welt!

$ raku exercises/the-main-function/hello-world-unit.raku
Hallo, Welt!
```

{% include nav.html %}
