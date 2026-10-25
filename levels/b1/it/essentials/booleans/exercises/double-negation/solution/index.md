---
title: 'Solution: Doppia negazione'
---

{% include menu.html %}

Per risolvere la seconda parte dell'esercizio, estendiamo il programma. Possiamo usare di nuovo la stessa variabile:

## Codice

```raku
my $value = False;
say !!$value;

$value = True;
say !!$value;
```

🦋 Puoi trovare il codice completo nel file [double-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/double-negation.raku).

## Commenti

Prima di eseguire il programma, pensiamo a che cosa stamperà. Ci sono due operatori di negazione prima della variabile. Funzionano come due negazioni separate. Nel primo caso, il valore cambia da `False` a `True`. Poi torna subito da `True` a `False`. Il secondo caso funziona allo stesso modo. Dopo due negazioni, otteniamo il valore booleano iniziale.

## Output

Il programma stampa il seguente output, che mostra che avevamo ragione:

```console
$ raku exercises/booleans/double-negation.raku
False
True
```

{% include nav.html %}
