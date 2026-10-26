---
title: 'Solution: Ein privater Helfer'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
sub stats {
    sub double($x) { $x * 2 }

    say double(3) + double(5);
}

stats;
```

🦋 Den Quellcode finden Sie in der Datei [private-helper.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/nested-subroutines/private-helper.raku).

## Ausgabe

```
16
```

## Kommentare

1. Der Helfer `double` steht in `stats`. Also können Sie ihn nur dort sehen. Andere Teile des Programms können ihn nicht aufrufen.

1. `stats` benutzt ihn zweimal. `double(3)` ergibt `6`, und `double(5)` ergibt `10`. Ihre Summe ist `16`.

{% include nav.html %}
