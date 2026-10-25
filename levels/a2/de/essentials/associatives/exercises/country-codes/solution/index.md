---
title: 'Solution: Ländercodes'
---

{% include menu.html %}

Das Programm hat eine Schleife über das Array `@codes`. Für jeden Code holt es den Namen aus dem Hash: `%cc{$_}`.

## Code

Hier ist eine mögliche Lösung. Sie zeigt nicht alle Länder:

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

Für diese Codes gibt das Programm diese Liste von Ländern aus:

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
