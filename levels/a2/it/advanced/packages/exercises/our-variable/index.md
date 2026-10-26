---
title: Una variabile our
translations_gpt: true
---

{% include menu.html %}

## Problema

Solo `our` rende un nome visibile fuori dal suo package. `my` tiene il nome privato. Crea un package `Config`. Ha una variabile `our` `$port` con il valore `8080`. Ha **anche** una variabile `my` `$secret` con il valore `42`. Dall'esterno del package, stampa `$Config::port`. Poi stampa se `$Config::secret` è definita. Non deve essere definita. Una variabile `my` non fa parte del namespace.

## Esempio

Il programma stampa:

```
8080
False
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
