---
title: Usare il convertitore
translations_gpt: Esercizio 'Usare il convertitore'
---

{% include menu.html %}

## Problema

Ecco un modulo nel file `Temperature.rakumod`:

```raku
unit module Temperature;

sub c-to-f($c) is export {
    $c * 9/5 + 32
}
```

Scrivi un programma separato. Il programma usa questo modulo. Riceve una temperatura in Celsius come argomento da riga di comando. Con il modulo, trasforma la temperatura in Fahrenheit. Poi stampa il risultato.

## Esempio

```console
$ raku -I. temperature.raku 100
212
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
