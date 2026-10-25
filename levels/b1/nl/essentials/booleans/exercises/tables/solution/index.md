---
title: 'Solution: Boolean tabellen'
---

{% include menu.html %}

Hier is een mogelijk programma. Het drukt de resultaten van alle Booleaanse operaties af.

## Code

```raku
say 'True && True is ', True && True; 
say 'True && False is ', True && False;
say 'False && True is ', False && True;
say 'False && False is ', False && False;

say 'True || True is ', True || True; 
say 'True || False is ', True || False;
say 'False || True is ', False || True;
say 'False || False is ', False || False;

say 'True ^^ True is ', True ^^ True; 
say 'True ^^ False is ', True ^^ False;
say 'False ^^ True is ', False ^^ True;
say 'False ^^ False is ', False ^^ False;
```

🦋 Je kunt de volledige code vinden in het bestand [tables.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/tables.raku).

## Uitvoer

Als je het programma uitvoert, drukt het de volgende tabel af.

```console
$ raku tables.raku
True && True is True
True && False is False
False && True is False
False && False is False
True || True is True
True || False is True
False || True is True
False || False is False
True ^^ True is Nil
True ^^ False is True
False ^^ True is True
False ^^ False is False
```

## Opmerkingen

Merk op dat de Booleaanse operaties hier geen haakjes nodig hebben. Ze hebben een hogere prioriteit. Maar dat geldt niet als je stringconcatenatie gebruikt:

```raku
say 'True && True is ' ~ (True && True);
```

Een andere manier is om [code-interpolatie](/nl/essentials/strings/code-interpolation) te gebruiken.

{% include nav.html %}
