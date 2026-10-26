---
title: Caricare a runtime
translations_gpt: Esercizio 'Caricare a tempo di esecuzione'
---

{% include menu.html %}

## Problema

Hai un modulo `Greeting.rakumod`, che esporta una subroutine `hello`:

```raku
unit module Greeting;

sub hello($name) is export {
    "Hello, $name!"
}
```

Carica questo modulo con `require` invece di `use`. Così viene caricato a **tempo di esecuzione**. `require` non importa i nomi automaticamente. Quindi devi elencare il simbolo che vuoi, con `require Greeting <&hello>;`. Poi chiama `hello('Sam')` e stampa il risultato.

Questo compito mostra anche a cosa serve caricare a tempo di esecuzione. Metti il `require` dentro una `sub MAIN` con un flag `--quiet`. Così il modulo viene caricato *solo* quando serve davvero un saluto. Con `--quiet`, il programma stampa `Silence.` e non tocca mai il modulo.

## Esempio

Se lo esegui con il modulo nel percorso di ricerca, il programma stampa:

```console
$ raku -I. require-import.raku
Hello, Sam!

$ raku -I. require-import.raku --quiet
Silence.
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
