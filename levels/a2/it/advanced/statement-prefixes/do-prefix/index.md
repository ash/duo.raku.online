---
title: do e il valore di un blocco
translations_gpt:
---

{% include menu.html %}

Un blocco da solo è un'istruzione, non un'espressione. Quindi di solito non potete assegnarlo a una variabile. Il prefisso `do` fa di un blocco un'espressione. Il suo valore è il valore dell'**ultima** istruzione del blocco:

```raku
my $x = do {
    my $a = 3;
    $a + 4;
};

say $x; # 7
```

Dentro il blocco potete creare variabili. Potete eseguire diverse istruzioni e calcolare un risultato. `do` restituisce il valore del blocco. Questo è utile quando un'espressione non basta per un valore.

`do` funziona anche prima delle istruzioni di controllo del flusso. Queste istruzioni scelgono o ripetono il codice. Con `do`, anche loro restituiscono un valore:

```raku
my $sign = do given 5 {
    when * > 0 { 'positive' }
    when * < 0 { 'negative' }
    default    { 'zero' }
};

say $sign; # positive
```

Qui `do given` fa di tutto il `given`/`when` un'espressione. Il suo valore è `positive`. Lo stesso funziona con `do if` e `do for`. In breve, con `do` un blocco può stare dove serve un valore. Funziona anche per le strutture di controllo.

{% include nav.html %}
