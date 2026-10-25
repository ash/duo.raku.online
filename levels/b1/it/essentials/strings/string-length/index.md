---
title: Lunghezza della stringa
---

{% include menu.html %}

Poiché in Raku le stringhe sono Unicode, alcune cose semplici diventano un po' più difficili. O, almeno, devi pensarci con più attenzione. Prendi, per esempio, la lunghezza di una stringa. È il numero di caratteri o il numero di byte? E se lo stesso carattere è fatto di parti diverse in stringhe diverse? È ancora un solo carattere?

## Lunghezza in caratteri

Per sapere quanti caratteri ha una stringa, usa il _metodo_ `chars`:

```raku
my $str = '你好世界';
say $str.chars;
```

Parleremo dei metodi più avanti, ma dovremmo già saperli usare. In Raku, puoi chiamare metodi su quasi ogni oggetto, comprese le stringhe e le variabili scalari. Per chiamare un metodo, usa un punto. Quindi qui chiamiamo il metodo su una variabile che contiene una stringa: `$str.chars`.

Il saluto cinese 你好世界 ha quattro caratteri. E `$str.chars` restituisce esattamente `4`.

## Lunghezza in byte

Solo come riferimento, ecco come trovare la lunghezza di una stringa in byte. In questo caso, devi sapere quale codifica si usa per la stringa:

```raku
my $str = '你好世界';
say $str.encode('UTF-8').bytes;
```

Questa volta, il programma stampa `12`. Nota che la seconda riga ha due chiamate di metodo in catena.

## Lunghezza in punti di codice

Per completare il quadro, ecco un altro metodo utile legato alla lunghezza delle stringhe: `codes`. Restituisce il numero di punti di codice nella stringa, dopo che la stringa è stata normalizzata. In molti casi, `codes` e `chars` restituiscono lo stesso numero. Ma in alcuni casi rari, i due metodi danno risultati diversi. Per esempio, puoi costruire ‘un carattere impossibile’. Per questo carattere non c'è un singolo punto di codice in tutto lo spazio Unicode.

```raku
say 'x̨'.chars;
say 'x̨'.codes;
```

Questo carattere, `x̨`, non ha un suo punto di codice. Si può costruire solo da due parti. Sono la lettera minuscola `x` e il carattere combinante `0x0328`. Quindi, c'è sempre un solo carattere, ma ci sono due punti di codice. Ecco perché il programma stampa:

    1
    2

{% include nav.html %}
