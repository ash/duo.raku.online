---
title: Introspezione dei moduli
translations_gpt:
---

{% include menu.html %}

Il nome di un modulo crea un _package_. Un package è uno spazio dei nomi che contiene i nomi definiti nel modulo. Prima, nella [sezione sui container](/it/advanced/containers), hai incontrato `WHO`. Restituisce lo `Stash`, cioè la tabella dei simboli, di un package. L'introspezione dei moduli usa proprio questo.

Gli esempi qui sotto usano il modulo `Greeting` che abbiamo costruito nei capitoli precedenti. Ha una subroutine esportata e una variabile `our` condivisa:

```raku
unit module Greeting;

our $version = '1.0';

sub hello($name) is export {
    return "Hello, $name!";
}
```

Scrivi il package di un modulo con `::` alla fine. Se aggiungi `.keys`, ottieni l'elenco dei nomi che contiene:

```raku
use Greeting;

say Greeting::.keys.sort; # ($version EXPORT)
```

Il modulo `Greeting` dei capitoli precedenti definisce una variabile `our`, `$version`. Quindi il suo package contiene questo nome, insieme al suo sigillo. Accanto c'è `EXPORT`, che può sembrare strano. È un package che Raku crea automaticamente. Contiene tutto ciò che un modulo contrassegna con `is export`, come la subroutine `hello`. Quindi un nome esportato _non_ appare direttamente nel package. Si trova dentro il sotto-package `EXPORT`. Le chiavi tornano senza un ordine fisso. Per questo l'esempio le ordina, così il risultato è sempre lo stesso.

Puoi anche cercare un nome nel package. Basta usare il nome come chiave. Così ottieni lo stesso valore del nome qualificato `$Greeting::version`:

```raku
use Greeting;

say Greeting::{'$version'}; # 1.0
```

## Elencare ciò che un modulo esporta

I nomi esportati si trovano davvero nel package `EXPORT` che hai visto sopra. Quindi puoi elencarli guardando un livello più in profondità. Le esportazioni senza tag vanno nel gruppo `DEFAULT` (vedi [Tag di esportazione](/it/advanced/modules-basics/export-tags)). Le `.keys` di questo gruppo sono le routine esportate:

```raku
use Greeting;

say Greeting::EXPORT::DEFAULT::.keys.sort; # (&hello)
```

Ogni chiave è un nome esportato con il suo sigillo. Qui è l'unica subroutine, `&hello`, con il `&` che indica una routine. In questo modo puoi scoprire cosa offre un modulo ai suoi utenti. Non devi leggere il suo codice sorgente. Basta chiedere al suo package `EXPORT::DEFAULT` cosa contiene.

Guardare dentro un package in questo modo è utile in due casi. Forse vuoi scoprire cosa offre un modulo. Oppure vuoi raggiungere i suoi nomi mentre il programma è in esecuzione. Allora non devi scriverli uno per uno nel codice sorgente.

{% include nav.html %}
