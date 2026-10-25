---
title: 'Solution: Eine Person begrüßen'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my $name = prompt 'Wie heißt du? ';
say 'Hallo, ', $name, '!';
```

🦋 Du kannst den Quellcode in der Datei [greet-a-person.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/greet-a-person.raku) finden.

## Ausgabe

Führe das Programm aus. Es fragt nach deinem Namen. Gib einen Namen ein:

```console
$ raku exercises/scalar-variables/greet-a-person.raku 
Wie heißt du? Inge
Hallo, Inge!
```

## Kommentare

1. Das Programm fragt nach einem Namen. Der Benutzer gibt eine Zeichenkette ein. Die skalare Variable `$name` speichert diese Zeichenkette. Dann gibt das Programm eine Liste von Werten an `say`. Die Variable ist ein Teil dieser Liste. Deshalb erscheint der Name in der Nachricht.

1. Es gibt einen besseren Weg, dieses Problem zu lösen. Er verwendet Zeichenketteninterpolation. Wir kommen bald zu diesem Problem zurück.

{% include nav.html %}
