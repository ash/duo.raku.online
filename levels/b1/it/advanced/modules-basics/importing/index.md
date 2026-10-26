---
title: Importazione
translations_gpt: Importazione
---

{% include menu.html %}

Puoi portare un modulo in un programma in più di un modo. Le tre istruzioni `use`, `need` e `require` sono diverse per _quando_ caricano il modulo. Sono diverse anche per _cosa_ rendono disponibile.

## `use`

Hai già visto `use`. Carica il modulo al momento della compilazione e importa i suoi nomi esportati. Così puoi chiamarli direttamente:

```raku
use Greeting;
say hello('Anna'); # Hello, Anna!
```

## `need`

Anche `need` carica il modulo al momento della compilazione. Ma _non_ importa i nomi esportati. Puoi comunque raggiungere le sue variabili `our` attraverso il nome del modulo:

```raku
need Greeting;
say $Greeting::version; # 1.0
```

Dopo `need Greeting`, Raku non riconoscerebbe un semplice `hello(...)`, perché non è stato importato niente. Sono disponibili solo i nomi qualificati, come `$Greeting::version`.

## `require`

`require` carica il modulo a _tempo di esecuzione_ invece che al momento della compilazione. Questo è utile quando sai solo durante l'esecuzione se ti serve un modulo. Per esempio, il suo nome può arrivare dall'input dell'utente.

Siccome il modulo viene caricato a tempo di esecuzione, niente viene importato automaticamente. Per importare dei simboli, elencali tra parentesi angolari dopo il nome del modulo. Poi puoi chiamarli direttamente:

```raku
require Greeting <&hello>;
say hello('Anna'); # Hello, Anna!
```

Nel codice di tutti i giorni, `use` è quello che ti serve. `need` e `require` ci sono per i casi meno comuni.

{% include nav.html %}
