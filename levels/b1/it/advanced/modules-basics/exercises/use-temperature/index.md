---
title: Usare il convertitore
translations_gpt: Esercizio 'Usare il convertitore'
---

{% include menu.html %}

## Problema

Hai un modulo in un file `Temperature.rakumod`:

```raku
unit module Temperature;

sub c-to-f($c) is export {
    $c * 9/5 + 32
}
```

Scrivi un programma separato che usa questo modulo. Il programma riceve una temperatura in Celsius come argomento da riga di comando. La converte in Fahrenheit con il modulo e stampa il risultato.

## Esempio

```console
$ raku -I. temperature.raku 100
212
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
