---
title: 'Solution: Un heredoc'
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
my $name  = 'Anna';
my $item  = 'Raku Book';
my $price = 25;
my $count = 3;

print qq:to/END/;
    Dear $name,
    You ordered $count copies of "$item".
    That comes to {$count * $price} dollars.
    Thank you!
    END
```

🦋 Puoi trovare il codice sorgente nel file [a-heredoc.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/quoting/a-heredoc.raku).

## Output

```
Dear Anna,
You ordered 3 copies of "Raku Book".
That comes to 75 dollars.
Thank you!
```

## Commenti

1. L'heredoc inizia con `qq:to` invece che con `q:to`, quindi interpola. Come una stringa `qq`, inserisce gli scalari `$name`, `$count` e `$item`. Esegue *anche* il codice dentro il testo: il blocco `{$count * $price}` calcola `3 * 25`. Così il totale, `75`, appare direttamente nel testo.

1. Qui le virgolette doppie intorno a `"$item"` sono solo caratteri normali. Dentro un heredoc non c'è nessun delimitatore che ha bisogno di escape. Quindi le virgolette vengono stampate come sono scritte, mentre `$item` viene comunque interpolato.

1. Il corpo e il terminatore di chiusura `END` hanno la stessa indentazione di quattro spazi. L'indentazione del terminatore viene tolta da ogni riga. Quindi quei quattro spazi non entrano mai nella stringa. L'output inizia dal bordo sinistro.

1. L'heredoc finisce già con un carattere di nuova riga. Quindi il codice usa `print` invece di `say`. Con `say` avresti un secondo carattere di nuova riga e una riga vuota in più.

{% include nav.html %}
