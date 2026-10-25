---
title: Escape dei caratteri speciali
---

{% include menu.html %}

Immagina di voler stampare un'etichetta con il prezzo. Conservi il nome del prodotto e il suo prezzo in due variabili scalari.

```raku
my $product = 'Electricity';
my $price = 3.14;
```

Come stampi l'etichetta se il prezzo è in dollari? L'output deve essere `Electricity costs $3.14`. Ma nelle stringhe tra doppi apici, il segno del dollaro indica che c'è una variabile da interpolare. Per stampare il carattere `$` stesso, devi farne l'escape:

```raku
say "$product costs \$$price";
```

Ovviamente, puoi anche evitare l'escape di `$` con la concatenazione di stringhe:

```raku
say $product ~ ' costs $' ~ $price;
```

Questa versione stampa esattamente la stessa stringa. Ma l'interpolazione sembra più naturale ed è più facile da leggere. Nota la stringa tra apici singoli `' costs $'`. Qui il carattere `$` non viene né interpolato né escapato. Questa è la differenza principale. I caratteri speciali tra apici singoli appaiono così come sono.

Nelle stringhe tra doppi apici, alcuni altri caratteri hanno un significato speciale:

`\$` | Segno di dollaro
`\n` | Nuova riga
`\r` | Ritorno a capo
`\t` | Tabulazione orizzontale
`\"` | Doppio apice
`\\` | Barra rovesciata

Il tipo di virgolette intorno a una stringa decide come Raku tratta i caratteri speciali. Guarda questi due esempi:

```raku
say 'One\nTwo';
say "Three\nFour";
```

Se esegui questo programma, la prima stringa appare senza cambiamenti, su una sola riga. Ma la seconda stringa è divisa in due parti:

    One\nTwo
    Three
    Four

Tra doppi apici, Raku tratta la sequenza speciale `\n` come un carattere di nuova riga. Tra apici singoli, sono solo due caratteri normali: `\` e `n`.

C'è un'eccezione interessante per `'` e `\`. Tra apici singoli, puoi fare l'escape di un apice singolo con un `\` davanti:

```raku
say '\''; # '
```

Se un apice singolo segue una barra rovesciata, devi fare l'escape anche della barra rovesciata:

```raku
say 'a\b\c\\'; # a\b\c\
```

{% include nav.html %}
