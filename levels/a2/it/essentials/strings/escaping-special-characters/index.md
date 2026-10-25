---
title: Escape dei caratteri speciali
---

{% include menu.html %}

Immagina di voler stampare un'etichetta con il prezzo. Il nome del prodotto è in una variabile scalare. Il prezzo è in un'altra variabile scalare.

```raku
my $product = 'Electricity';
my $price = 3.14;
```

Il prezzo è in dollari. Allora come stampi l'etichetta? Vuoi questo output: `Electricity costs $3.14`. Ma tra doppi apici, il segno del dollaro indica una variabile. Raku interpola questa variabile. Per stampare proprio il `$`, fai l'escape con una barra rovesciata:

```raku
say "$product costs \$$price";
```

Puoi anche usare la concatenazione di stringhe. Allora non devi fare l'escape di `$`:

```raku
say $product ~ ' costs $' ~ $price;
```

Questa versione stampa esattamente la stessa stringa. Ma l'interpolazione sembra più naturale. È più facile da leggere. Guarda la stringa tra apici singoli: `' costs $'`. Qui Raku non interpola il carattere `$`. Non ne fa nemmeno l'escape. Questa è la differenza principale. Tra apici singoli, i caratteri speciali restano come sono.

Ecco altri caratteri speciali. Hanno un significato speciale nelle stringhe tra doppi apici:

`\$` | Segno di dollaro
`\n` | Nuova riga
`\r` | Ritorno a capo (torna all'inizio della riga)
`\t` | Tabulazione orizzontale
`\"` | Doppio apice
`\\` | Barra rovesciata

Le virgolette intorno a una stringa sono importanti. Dicono a Raku cosa fare con i caratteri speciali. Guarda questi due esempi:

```raku
say 'One\nTwo';
say "Three\nFour";
```

Esegui questo programma. La prima stringa resta com'è, su una riga. La seconda stringa ora è in due parti:

    One\nTwo
    Three
    Four

Tra doppi apici, `\n` è una sequenza speciale. Raku la trasforma in un carattere di nuova riga. Tra apici singoli, `\n` sono solo due caratteri normali: `\` e `n`.

C'è un'eccezione interessante per `'` e `\`. Tra apici singoli, puoi fare l'escape di un apice singolo. Metti un `\` prima dell'apice:

```raku
say '\''; # '
```

A volte un apice singolo viene dopo una barra rovesciata. Allora devi fare l'escape anche della barra rovesciata:

```raku
say 'a\b\c\\'; # a\b\c\
```

{% include nav.html %}
