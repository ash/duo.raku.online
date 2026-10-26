---
title: Caricare a runtime
translations_gpt: Esercizio 'Caricare a tempo di esecuzione'
---

{% include menu.html %}

## Problema

Ecco un modulo, `Greeting.rakumod`. Esporta una subroutine `hello`:

```raku
unit module Greeting;

sub hello($name) is export {
    "Hello, $name!"
}
```

Carica questo modulo con `require`, non con `use`. Allora il programma lo carica a **tempo di esecuzione**, cioè mentre gira. `require` non importa i nomi automaticamente. Quindi elenca il nome che vuoi, così: `require Greeting <&hello>;`. Poi chiama `hello('Sam')` e stampa il risultato.

Ora mostra perché caricare a tempo di esecuzione è utile. Metti il `require` dentro una `sub MAIN` con un flag `--quiet`. Il modulo si carica *solo* quando vuoi davvero un saluto. Con `--quiet`, il programma non tocca per niente il modulo. Stampa solo `Silence.`

## Esempio

Esegui il programma con il modulo nel percorso di ricerca. Ecco cosa stampa:

```console
$ raku -I. require-import.raku
Hello, Sam!

$ raku -I. require-import.raku --quiet
Silence.
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
