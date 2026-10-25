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

Hier sind zwei mögliche Fälle:

```console
$ raku exercises/built-in-functions-for-printing/print-the-warning.raku 
Wie alt bist du? 20
Dein Alter ist 20

$ raku exercises/built-in-functions-for-printing/print-the-warning.raku 
Wie alt bist du? -1
Du hast eine negative Zahl eingegeben!
```

Um zu prüfen, ob die Fehlermeldung an `STDERR` geht, leite die Ausgabe um. Die Frage nach deinem Alter erscheint dann nicht, aber du kannst trotzdem eine Zahl eingeben. Die Warnung ist weiter sichtbar.

```console
$ raku exercises/built-in-functions-for-printing/print-the-warning.raku > /dev/null
20

$ raku exercises/built-in-functions-for-printing/print-the-warning.raku > /dev/null 
-1
Du hast eine negative Zahl eingegeben!
```

{% include nav.html %}
