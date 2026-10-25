---
title: Lunghezza della stringa
---

{% include menu.html %}

Le stringhe di Raku sono stringhe Unicode. Per questo, alcune cose semplici sono un po' più difficili. O, almeno, devi pensarci di più. Per esempio, prendi la lunghezza di una stringa. È il numero di caratteri? O è il numero di byte? E a volte lo stesso carattere ha parti diverse in stringhe diverse. È ancora un solo carattere, allora?

## Lunghezza in caratteri

Il _metodo_ `chars` dà la lunghezza di una stringa in caratteri:

```raku
my $str = '你好世界';
say $str.chars;
```

Parliamo dei metodi più avanti. Ma possiamo già usarli ora. In Raku, puoi chiamare metodi su quasi ogni oggetto. Anche le stringhe e le variabili scalari sono oggetti. Per chiamare un metodo, scrivi un punto. Qui la variabile contiene una stringa. Chiamiamo il metodo su questa variabile: `$str.chars`.

Questo saluto cinese ha quattro caratteri: 你好世界. E `$str.chars` dà esattamente `4`.

## Lunghezza in byte

Questo è solo per tua informazione. Ecco come avere la lunghezza di una stringa in byte. Per questo, devi sapere la codifica della stringa:

```raku
my $str = '你好世界';
say $str.encode('UTF-8').bytes;
```

Questa volta, il programma stampa `12`. Guarda la seconda riga. Ha due chiamate di metodo, una dopo l'altra.

## Lunghezza in punti di codice

Per finire questo argomento, ecco un altro metodo utile per la lunghezza delle stringhe: `codes`. Dà il numero di punti di codice nella stringa. Un punto di codice è il numero di un carattere in Unicode. Prima di contare, Raku normalizza la stringa. La porta a una forma standard. Spesso, `codes` e `chars` danno lo stesso risultato. Ma in alcuni casi rari, i due metodi danno risultati diversi. Per esempio, puoi costruire ‘un carattere impossibile’. In tutto lo spazio Unicode non c'è un solo punto di codice per questo carattere.

```raku
say 'x̨'.chars;
say 'x̨'.codes;
```

Il carattere `x̨` non ha un suo punto di codice. Puoi costruirlo solo da due parti. La prima parte è la lettera minuscola `x`. La seconda parte è il carattere combinante `0x0328`. Aggiunge un segno alla lettera. Quindi, è un solo carattere, ma ha due punti di codice. Ecco perché il programma stampa questo:

    1
    2

{% include nav.html %}
