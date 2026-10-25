---
title: 'Solution: Ländercodes'
---

{% include menu.html %}

Um einen Code in einen Namen umzuwandeln, schlägt das Programm ihn im Hash nach: `%cc{$_}`. Das macht es in einer Schleife über das Array `@codes`.

## Code

Hier ist eine mögliche Lösung, ohne die volle Liste der Länder:

```raku
my %cc =
    AD => 'Andorra',
    AE => 'Vereinigte Arabische Emirate',

    # . . .

    ZM => 'Sambia',
    ZW => 'Simbabwe'
;

my @codes = < FR IT DE EE LV US CN IN BR >;

say %cc{$_} for @codes;
```

🦋 Finde das Programm in der Datei [country-codes.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/country-codes.raku).

## Ausgabe

Mit den Codes aus der Aufgabe gibt das Programm die folgenden Länder aus:

```console
$ raku exercises/associatives/country-codes.raku
Frankreich
Italien
Deutschland
Estland
Lettland
Vereinigte Staaten von Amerika
China
Indien
Brasilien
```

{% include nav.html %}
