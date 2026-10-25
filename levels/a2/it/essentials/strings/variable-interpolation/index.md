---
title: Interpolazione delle variabili
---

{% include menu.html %}

Nelle ultime sezioni, alcune stringhe erano tra virgolette singole. Altre stringhe erano tra virgolette doppie. Lo hai notato? La differenza è molto importante.

Ti serve una virgoletta singola dentro una stringa? Il modo più facile è usare le virgolette doppie, naturalmente:

```raku
say "O'Henry";
```

A proposito, un vero apostrofo è comunque meglio di una virgoletta singola. Il motivo è che [Raku è bravo con Unicode](../../on-unicode).

```raku
say 'O’Henry';
```

Ma il vero potere delle virgolette doppie è un altro. Possono _interpolare_ le variabili. Presto vedremo che possono anche eseguire codice! Guarda questo programma:

```raku
my $name = 'Karl';
say "Hello, $name!";
```

Come puoi immaginare, il programma stampa `Hello, Karl!`. Raku toglie il nome `$name`, con il sigillo `$`. Al suo posto mette il valore della variabile.

Raku usa il valore della variabile al momento dell'interpolazione. Puoi cambiare il valore di `$name`. Poi la interpoli di nuovo. Ora la stringa riceve il nuovo valore. Facciamo una prova:

```raku
my $name = 'Karl';
say "Hello, $name!";

$name = 'Anna';
say "Hello, $name!";
```

Questa volta, la stessa stringa crea messaggi diversi:

    Hello, Karl!
    Hello, Anna!

{% include nav.html %}
