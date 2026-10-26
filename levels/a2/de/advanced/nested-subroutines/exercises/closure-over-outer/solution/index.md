---
title: 'Solution: Über den äußeren Bereich schließen'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
sub greet($name) {
    sub message {
        "Hello, $name!";
    }

    say message;
}

greet('Anna');
```

🦋 Den Quellcode finden Sie in der Datei [closure-over-outer.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/nested-subroutines/closure-over-outer.raku).

## Ausgabe

```
Hello, Anna!
```

## Kommentare

1. `message` nimmt keine Argumente. Aber `message` kann trotzdem `$name` benutzen. Eine verschachtelte Unterroutine behält die lexikalischen Variablen der Unterroutine um sie herum. Also ist das äußere `$name` in `message` sichtbar.

1. Während des Aufrufs `greet('Anna')` ist `$name` gleich `'Anna'`. Also gibt `message` den Text `Hello, Anna!` zurück. Der Helfer teilt den Gültigkeitsbereich der Unterroutine um ihn herum. Also ist ein verschachtelter Helfer mehr als nur eine versteckte Funktion.

{% include nav.html %}
