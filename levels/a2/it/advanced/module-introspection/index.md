---
title: Introspezione dei moduli
translations_gpt:
---

{% include menu.html %}

Il nome di un modulo crea anche un _package_. Un package è uno spazio dei nomi. Tiene i nomi del modulo. Prima, nella [sezione sui container](/it/advanced/containers), hai visto `WHO`. Restituisce lo `Stash` di un package. Lo `Stash` è la tabella dei simboli, cioè dei nomi, nel package. L'introspezione dei moduli usa proprio questo. Con l'introspezione, un programma guarda dentro un modulo.

Gli esempi qui sotto usano il modulo `Greeting` dei capitoli precedenti. Ha una subroutine che esporta. Ha anche una variabile `our` condivisa:

```raku
unit module Greeting;

our $version = '1.0';

sub hello($name) is export {
    return "Hello, $name!";
}
```

Per avere il package di un modulo, scrivi `::` dopo il suo nome. Poi aggiungi `.keys`. Questo elenca i nomi del package:

```raku
use Greeting;

say Greeting::.keys.sort; # ($version EXPORT)
```

Il modulo `Greeting` dei capitoli precedenti ha una variabile `our`, `$version`. Quindi il suo package ha questo nome. Il nome include il sigillo. Accanto, vedi `EXPORT`. Questo forse ti sorprende. Anche `EXPORT` è un package. Raku lo crea automaticamente. Il modulo contrassegna alcune cose con `is export`. `EXPORT` le tiene tutte, per esempio la subroutine `hello`. Quindi un nome esportato _non_ è direttamente nel package. È in `EXPORT`. Questo è un package più piccolo dentro il package del modulo. Le chiavi non arrivano in un ordine fisso. Quindi l'esempio le ordina. Così il risultato è sempre lo stesso.

Puoi anche trovare un nome nel package. Usa il nome come chiave. Ottieni lo stesso valore del nome completo `$Greeting::version`:

```raku
use Greeting;

say Greeting::{'$version'}; # 1.0
```

## Elencare le esportazioni di un modulo

I nomi esportati sono davvero nel package `EXPORT` di prima. Quindi puoi elencarli. Basta guardare un livello più sotto. Le esportazioni senza tag vanno nel gruppo `DEFAULT`. Trovi di più sui tag in [Tag di esportazione](/it/advanced/modules-basics/export-tags). Le `.keys` di `DEFAULT` sono le routine esportate:

```raku
use Greeting;

say Greeting::EXPORT::DEFAULT::.keys.sort; # (&hello)
```

Ogni chiave è un nome esportato con il suo sigillo. Qui c'è una sola chiave: la subroutine `&hello`. Il sigillo `&` mostra che è una routine. Così puoi scoprire cosa dà un modulo ai suoi utenti. Non devi leggere il suo codice sorgente. Basta chiedere al suo package `EXPORT::DEFAULT` cosa contiene.

Guardare dentro un package così è utile. Puoi scoprire cosa ha un modulo. Puoi anche arrivare ai suoi nomi mentre il programma è in esecuzione. Allora non devi scrivere ogni nome nel codice.

{% include nav.html %}
