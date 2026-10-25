---
title: 'Solution: Tabelle booleane'
---

{% include menu.html %}

Ecco un possibile programma. Stampa i risultati di tutte le operazioni booleane.

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

Quando esegui il programma, stampa la seguente tabella.

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

Nota che qui le operazioni booleane non hanno bisogno di parentesi. Hanno una precedenza più alta. Ma questo non vale se usi la concatenazione di stringhe:

```raku
say 'True && True is ' ~ (True && True);
```

Un altro modo è usare [l'interpolazione del codice](/it/essentials/strings/code-interpolation).

{% include nav.html %}
