---
title: "Soluzione: Un'etichetta modificabile"
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. Il tratto `is rw` fa restituire all'accessore un contenitore scrivibile. Così l'accessore può stare sul lato sinistro di un assegnamento.

1. Poiché il contenitore è scrivibile, anche l'operatore composto `~=` funziona su di esso. `$l.text ~= ' (revised)'` legge il testo attuale, aggiunge la nuova parte finale e salva di nuovo il risultato. Tutto questo avviene attraverso lo stesso accessore.

{% include nav.html %}
