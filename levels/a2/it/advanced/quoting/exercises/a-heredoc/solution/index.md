---
title: 'Solution: Un heredoc'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

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

1. L'heredoc inizia con `qq:to`, non con `q:to`. Quindi interpola. Funziona come una stringa `qq`. Inserisce gli scalari `$name`, `$count` e `$item`. Esegue *anche* il codice dentro il testo. Il blocco `{$count * $price}` calcola `3 * 25`. Così il totale `75` appare nel testo.

1. Guarda le virgolette doppie in `"$item"`. Qui sono solo caratteri normali. In un heredoc, le virgolette non sono delimitatori. Quindi non serve il backslash. Raku stampa le virgolette così come sono. Ma interpola comunque `$item`.

1. Il corpo e il terminatore `END` alla fine hanno tutti e due quattro spazi davanti. Raku toglie da ogni riga l'indentazione del terminatore. Così questi quattro spazi non entrano mai nella stringa. L'output inizia dal bordo sinistro.

1. L'heredoc finisce già con un carattere di nuova riga. Quindi il programma usa `print`, non `say`. `say` aggiunge un altro carattere di nuova riga. Questo dà una riga vuota in più.

{% include nav.html %}
