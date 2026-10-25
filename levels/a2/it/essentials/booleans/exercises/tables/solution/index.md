---
title: 'Solution: Tabelle booleane'
---

{% include menu.html %}

Ecco un modo per risolvere il compito. Il programma stampa tutti i risultati delle operazioni booleane.

## Codice

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

🦋 Puoi trovare il codice completo nel file [tables.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/tables.raku).

## Output

Esegui il programma. Stampa questa tabella.

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

## Commenti

Nota che qui non servono parentesi intorno alle operazioni booleane. Il motivo è la precedenza. La precedenza è l'ordine in cui Raku fa le operazioni. Le operazioni booleane hanno una precedenza più alta. Quindi Raku le fa per prime. Ma con la concatenazione di stringhe, le parentesi servono:

```raku
say 'True && True is ' ~ (True && True);
```

Puoi anche mettere il codice dentro la stringa. Si chiama [interpolazione del codice](/it/essentials/strings/code-interpolation).

{% include nav.html %}
