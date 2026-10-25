---
title: 'Solution: Doppia negazione'
---

{% include menu.html %}

Aggiungiamo il codice per la seconda parte del compito. Usiamo di nuovo la stessa variabile:

## Codice

```raku
my $value = False;
say !!$value;

$value = True;
say !!$value;
```

🦋 Puoi trovare il codice completo nel file [double-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/double-negation.raku).

## Commenti

Non eseguire ancora il programma. Prima pensiamo: che cosa stampa? Ci sono due operatori di negazione prima della variabile. Una negazione cambia `False` in `True` e `True` in `False`. Qui i due `!` funzionano come due operatori di negazione separati. Nel primo caso, la prima negazione cambia `False` in `True`. Poi la seconda negazione lo cambia subito di nuovo in `False`. Il secondo caso funziona allo stesso modo. Dopo due negazioni, abbiamo il valore booleano di partenza.

## Output

Ecco l'output del programma. Mostra che avevamo ragione:

```console
$ raku exercises/booleans/double-negation.raku
False
True
```

{% include nav.html %}
