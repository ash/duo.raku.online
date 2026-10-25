---
title: 'Solution: Eine Person begrüßen'
---

{% include menu.html %}

Hier ist eine mögliche Lösung für die Aufgabe.

## Code

```raku
my $name = prompt 'Wie heißt du? ';
say 'Hallo, ', $name, '!';
```

🦋 Du kannst den Quellcode in der Datei [greet-a-person.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/greet-a-person.raku) finden.

## Ausgabe

Führe das Programm aus und gib einen Namen ein, wenn du die Eingabeaufforderung siehst:

```console
$ raku exercises/scalar-variables/greet-a-person.raku 
Wie heißt du? Inge
Hallo, Inge!
```

## Kommentare

1. Nach der Eingabeaufforderung gibt der Benutzer eine Zeichenkette ein. Das Programm speichert diese Zeichenkette in einer skalaren Variablen, `$name`. Du verwendest die Variable in der Liste, die du der `say`-Routine übergibst. Deshalb erscheint der Name in der Nachricht.

1. Ein besserer Weg, dieses Problem zu lösen, ist die Zeichenketteninterpolation. Wir kommen bald darauf zurück.

{% include nav.html %}
