---
title: Trasformare valori in testo
---

{% include menu.html %}

Quando un programma mostra un valore, deve trasformarlo in testo. Succede quando stampi il valore con `say` o con `print`, o quando lo metti in una stringa. Raku non ha un solo modo fisso per farlo. Invece, ogni valore ha alcuni metodi standard. Ognuno di essi crea una stringa per uno scopo diverso:

* `.gist` — una forma facile da leggere per le persone. È quella che stampa `say`.
* `.Str` — la forma stringa semplice, per i punti in cui Raku ha bisogno di una stringa.
* `.raku` — una forma simile al codice, utile quando fai il debug.

Tutti e tre sono metodi normali, presenti in ogni valore di Raku. Così funzionano nello stesso modo su numeri, stringhe, array e oggetti creati da te. Le pagine seguenti guardano ogni metodo, uno alla volta. Poi ti aiutano a scegliere quello giusto. [La sezione successiva presenta `dd`](/it/advanced/dd), uno strumento di Rakudo costruito sopra `.raku`.

{% include nav.html %}
