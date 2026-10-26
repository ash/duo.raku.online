---
title: "Soluzione: Un'etichetta modificabile"
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
class Label {
    has $.text is rw;
}

my $l = Label.new(text => 'draft');
$l.text ~= ' (revised)';
say $l.text;
```

🦋 Trova il programma nel file [changeable-label.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/changeable-label.raku).

## Output

```
draft (revised)
```

## Commenti

1. Il tratto `is rw` cambia l'accessore. Ora restituisce un contenitore in cui puoi scrivere. Così l'accessore può stare a sinistra di un assegnamento.

1. Puoi scrivere nel contenitore. Così anche l'operatore `~=` funziona con il contenitore. Questo operatore unisce le stringhe e assegna in un solo passo. `$l.text ~= ' (revised)'` legge il testo attuale. Aggiunge la nuova parte alla fine. Poi salva di nuovo il risultato. Tutto questo passa per lo stesso accessore.

{% include nav.html %}
