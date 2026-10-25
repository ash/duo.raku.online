---
title: 'Solution: Boolean tabellen'
---

{% include menu.html %}

Hier is één manier om de taak op te lossen. Het programma drukt alle resultaten van de Booleaanse operaties af.

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

Voer het programma uit. Het drukt deze tabel af.

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

Let op: je hebt hier geen haakjes nodig rond de Booleaanse operaties. Dat komt door de prioriteit. Prioriteit is de volgorde waarin Raku de operaties doet. De Booleaanse operaties hebben een hogere prioriteit. Dus doet Raku ze eerst. Maar bij stringconcatenatie heb je de haakjes wel nodig:

```raku
say 'True && True is ' ~ (True && True);
```

Je kunt de code ook in de string zetten. Dat heet [code-interpolatie](/nl/essentials/strings/code-interpolation).

{% include nav.html %}
