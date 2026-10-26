---
title: Creare moduli
translations_gpt: Creare moduli
---

{% include menu.html %}

Con il tempo i programmi diventano più grandi. Allora è bene dividerli in pezzi. Puoi usare questi pezzi di nuovo. Un _modulo_ è uno di questi pezzi di codice. Sta in un proprio file. Altri programmi possono caricarlo e usarlo.

Un file di modulo ha l'estensione `.rakumod`. Inizia con `unit module` e il nome del modulo. Di solito le subroutine in un modulo sono private. Solo il modulo stesso può usarle. Vuoi condividere una subroutine con altro codice? Contrassegnala con il tratto `is export`.

Ecco un modulo nel file `Greeting.rakumod`:

```raku
unit module Greeting;

sub hello($name) is export {
    return "Hello, $name!";
}
```

La subroutine `hello` ha `is export`. Quindi ogni programma che usa il modulo può vederla. Una subroutine senza `is export` resta privata. Solo il modulo stesso può usarla.

Un modulo può anche condividere dati. Per questo usa le variabili `our`. Altro codice può arrivarci attraverso il nome del modulo. Aggiungiamo un numero di versione a `Greeting`. Serve solo una riga in più nel file:

```raku
our $version = '1.0';
```

Ora `Greeting.rakumod` ha questa riga. Quindi il valore è disponibile come `$Greeting::version`. Questo funziona ovunque carichi il modulo.

I prossimi argomenti mostrano [come un programma carica un modulo così](/it/advanced/modules-basics/using-modules). Mostrano anche cosa ottiene il programma dal modulo.

{% include nav.html %}
