---
title: 'Solution: Ein privater Helfer'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Der Helfer `double` ist innerhalb von `stats` definiert, also ist er nur dort sichtbar. Kein anderer Teil des Programms kann ihn aufrufen.

1. `stats` verwendet ihn zweimal: `double(3)` ergibt `6`, und `double(5)` ergibt `10`. Ihre Summe ist `16`.

{% include nav.html %}
