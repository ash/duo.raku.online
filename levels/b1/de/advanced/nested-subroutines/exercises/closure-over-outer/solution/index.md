---
title: 'Solution: Über den äußeren Bereich schließen'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. `message` nimmt keine Argumente, kann aber trotzdem `$name` benutzen. Eine verschachtelte Unterroutine hält die lexikalischen Variablen der Unterroutine fest, die sie enthält. Also ist das äußere `$name` im Gültigkeitsbereich.

1. Wenn `greet('Anna')` läuft, ist `$name` gleich `'Anna'`. Also gibt `message` den Text `Hello, Anna!` zurück. Verschachtelte Helfer teilen den Gültigkeitsbereich um sie herum. Das macht sie zu mehr als nur versteckten Funktionen.

{% include nav.html %}
