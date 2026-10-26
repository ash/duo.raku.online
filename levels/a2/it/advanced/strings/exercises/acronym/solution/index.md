---
title: 'Solution: Acronimo'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my $phrase = 'hyper text markup language';

my $acronym = '';
for $phrase.words -> $word {
    $acronym ~= $word.substr(0, 1);
}

say $acronym.uc;
```

🦋 Puoi trovare il codice sorgente nel file [acronym.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/acronym.raku).

## Output

```
HTML
```

## Commenti

1. `$phrase.words` dà la lista delle parole. Il ciclo prende il primo carattere di ogni parola con `substr(0, 1)`. Aggiunge questo carattere alla fine di `$acronym`.

1. Alla fine, tutte le prime lettere sono in `$acronym`. Poi `uc` trasforma il risultato in maiuscolo: `HTML`.

{% include nav.html %}
