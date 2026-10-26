---
title: do e il valore di un blocco
translations_gpt:
---

{% include menu.html %}

Un blocco da solo è un'istruzione, non un'espressione. Quindi normalmente non potete assegnarlo a una variabile. Il prefisso `do` trasforma un blocco in un'espressione. Il suo valore è il valore dell'**ultima** istruzione del blocco:

```raku
my $x = do {
    my $a = 3;
    $a + 4;
};

say $x; # 7
```

Dentro il blocco potete dichiarare variabili, eseguire diverse istruzioni e calcolare un risultato. Poi `do` restituisce il valore del blocco. Questo è utile quando vi serve più di un'espressione per ottenere un valore.

`do` funziona anche davanti alle istruzioni di controllo del flusso. Allora anche queste possono restituire un valore:

```raku
my $sign = do given 5 {
    when * > 0 { 'positive' }
    when * < 0 { 'negative' }
    default    { 'zero' }
};

say $sign; # positive
```

Qui `do given` trasforma tutto il `given`/`when` in un'espressione con il valore `positive`. Lo stesso funziona con `do if` e `do for`. In breve, `do` vi permette di usare un blocco dove serve un valore. Questo funziona anche per una struttura di controllo.

{% include nav.html %}
