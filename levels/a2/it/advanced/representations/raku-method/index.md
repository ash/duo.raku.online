---
title: Il metodo `.raku`
---

{% include menu.html %}

Il terzo metodo è `.raku`. Restituisce una stringa con una forma del valore **simile al codice**. Nel caso migliore, puoi incollare questa stringa in un programma. Allora ottieni di nuovo lo stesso valore. Ogni valore in Raku ha questo metodo.

```raku
say 42.raku;        # 42
say 'Raku'.raku;    # "Raku"
say (1, 2, 3).raku; # (1, 2, 3)
```

Guarda la stringa `'Raku'`. Torna con le virgolette intorno. Così un numero e una stringa hanno un aspetto diverso. Ti servono dettagli così quando fai il debug di un programma.

Il metodo funziona anche per dati con molte parti. Questo vale anche per i dati annidati, con una struttura dentro un'altra:

```raku
my @data = 1, [2, 3], 4;
say @data.raku; # [1, [2, 3], 4]
```

`.raku` restituisce una stringa normale. Così puoi usarlo in ogni punto che vuole una stringa. Per esempio, puoi metterlo dentro una stringa tra virgolette doppie:

```raku
my @data = 10, 20, 30;
say "The data is { @data.raku }";
# The data is [10, 20, 30]
```

Usa `.raku` quando ti serve questa forma come stringa. Allora puoi aggiungerla ai tuoi messaggi. Molto presto incontrerai `dd`. È uno strumento di Rakudo. Stampa lo stesso tipo di forma per te, in un solo passo.

{% include nav.html %}
