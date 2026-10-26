---
title: Prefissi di istruzione
translations_gpt:
---

{% include menu.html %}

Un _prefisso di istruzione_ è una parola chiave che mettete prima di un'istruzione o di un blocco. Cambia il modo in cui il codice viene eseguito. Ne avete già visto uno: `gather`, che raccoglie tutto quello che un blocco dà a `take`. Questa sezione mostra alcuni altri prefissi di uso generale.

Con i prefissi potete fare diverse cose. Potete trasformare un blocco in un'espressione che dà un valore (`do`). Potete decidere quando una lista viene calcolata: subito o su richiesta (`eager` e `lazy`). E potete eseguire codice solo per i suoi effetti collaterali (`sink`). Oppure potete eseguirlo con gli avvisi spenti (`quietly`).

{% include nav.html %}
