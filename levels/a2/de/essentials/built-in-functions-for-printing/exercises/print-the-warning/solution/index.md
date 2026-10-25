---
title: 'Solution: Die Warnung drucken'
---

{% include menu.html %}

## Code

Hier ist die Lösung:

```raku
my $age = prompt 'Wie alt bist du? ';

if $age < 0 {
    note 'Du hast eine negative Zahl eingegeben!';
}
else {
    say "Dein Alter ist $age";
}
```

🦋 Finde das Programm in der Datei [print-the-warning.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/built-in-functions-for-printing/print-the-warning.raku).

## Ausgabe

Hier sind zwei Beispiele:

```console
$ raku exercises/built-in-functions-for-printing/print-the-warning.raku 
Wie alt bist du? 20
Dein Alter ist 20

$ raku exercises/built-in-functions-for-printing/print-the-warning.raku 
Wie alt bist du? -1
Du hast eine negative Zahl eingegeben!
```

Geht die Meldung wirklich an `STDERR`? Um das zu prüfen, leite die Ausgabe um. Dann siehst du die Frage nach deinem Alter nicht. Aber du kannst trotzdem eine Zahl eingeben. Und du siehst immer noch die Warnung.

```console
$ raku exercises/built-in-functions-for-printing/print-the-warning.raku > /dev/null
20

$ raku exercises/built-in-functions-for-printing/print-the-warning.raku > /dev/null 
-1
Du hast eine negative Zahl eingegeben!
```

{% include nav.html %}
