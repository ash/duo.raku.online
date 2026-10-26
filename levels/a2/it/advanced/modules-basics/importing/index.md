---
title: Importazione
translations_gpt: Importazione
---

{% include menu.html %}

Ci sono più modi per portare un modulo in un programma. Raku ha tre istruzioni per questo: `use`, `need` e `require`. Sono diverse in due cose. La prima è _quando_ caricano il modulo. La seconda è _cosa_ danno al programma.

## `use`

Conosci già `use`. Carica il modulo al momento della compilazione, prima dell'esecuzione del programma. Importa anche i nomi esportati del modulo. Così puoi chiamarli direttamente:

```raku
use Greeting;
say hello('Anna'); # Hello, Anna!
```

## `need`

Anche `need` carica il modulo al momento della compilazione. Ma _non_ importa i nomi esportati. Puoi comunque arrivare alle variabili `our` del modulo. Per questo usa il nome del modulo:

```raku
need Greeting;
say $Greeting::version; # 1.0
```

Dopo `need Greeting`, un semplice `hello(...)` non funziona. `need` non ha importato niente. Sono disponibili solo i nomi completi, con dentro il nome del modulo. Un esempio è `$Greeting::version`.

## `require`

`require` carica il modulo a _tempo di esecuzione_, non al momento della compilazione. Questo è utile in alcuni casi. A volte non sai se ti serve un modulo. Lo sai solo quando il programma è in esecuzione. Per esempio, l'utente può scrivere il nome del modulo.

Il modulo si carica a tempo di esecuzione. Quindi `require` non importa niente automaticamente. Dopo il nome del modulo, scrivi i nomi che vuoi. Mettili tra parentesi angolari. Allora `require` li importa. Così puoi chiamarli direttamente:

```raku
require Greeting <&hello>;
say hello('Anna'); # Hello, Anna!
```

Di solito `use` è la scelta giusta. `need` e `require` sono per i casi meno comuni.

{% include nav.html %}
