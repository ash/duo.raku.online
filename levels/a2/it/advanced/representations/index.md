---
title: Trasformare valori in testo
---

{% include menu.html %}

A volte un programma mostra un valore. Puoi stamparlo con `say` o con `print`, o metterlo in una stringa. In tutti questi casi, il valore deve diventare testo. Raku non ha un solo modo fisso per farlo. Invece, ogni valore ha alcuni metodi standard. Ogni metodo crea una stringa per uno scopo diverso:

* `.gist` — una forma da leggere per le persone. `say` stampa questa forma.
* `.Str` — la forma stringa semplice. Raku la usa quando gli serve una stringa.
* `.raku` — una forma simile al codice. È utile quando fai il debug di un programma.

Tutti e tre sono metodi normali. Ogni valore in Raku li ha. Così funzionano nello stesso modo per qualsiasi valore. Può essere un numero, una stringa o un array. Può essere anche un oggetto creato da te. Le pagine seguenti mostrano ogni metodo, uno alla volta. Poi ti aiutano a scegliere quello giusto. [La sezione dopo parla di `dd`](/it/advanced/dd). È uno strumento di Rakudo. È costruito sopra `.raku`.

{% include nav.html %}
