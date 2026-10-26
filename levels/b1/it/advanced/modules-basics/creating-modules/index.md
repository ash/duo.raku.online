---
title: Creare moduli
translations_gpt: Creare moduli
---

{% include menu.html %}

Quando i programmi diventano più grandi, conviene dividerli in pezzi riutilizzabili. Un _modulo_ è un'unità di codice in un proprio file. Altri programmi possono caricarlo e usarlo.

Un file di modulo ha l'estensione `.rakumod`. Inizia con `unit module`, che dà il nome al modulo. Di base, le subroutine al suo interno sono private. Per condividerne una con il codice che usa il modulo, contrassegnala con il tratto `is export`.

Ecco un modulo in un file chiamato `Greeting.rakumod`:

```raku
unit module Greeting;

sub hello($name) is export {
    return "Hello, $name!";
}
```

La subroutine `hello` ha `is export`, quindi qualsiasi programma che usa il modulo può vederla. Senza `is export`, una subroutine resterebbe privata del modulo.

Un modulo può anche condividere dati con le variabili `our`. Altro codice può raggiungerle attraverso il nome del modulo. Per aggiungere un numero di versione a `Greeting`, basta una riga in più nel file:

```raku
our $version = '1.0';
```

Quando questa riga è in `Greeting.rakumod`, il valore è disponibile come `$Greeting::version`. Questo funziona ovunque il modulo venga caricato.

I prossimi argomenti mostrano [come un programma carica un modulo di questo tipo](/it/advanced/modules-basics/using-modules). Spiegano anche cosa ottiene esattamente il programma dal modulo.

{% include nav.html %}
