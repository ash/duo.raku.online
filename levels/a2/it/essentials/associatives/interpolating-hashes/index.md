---
title: Interpolazione di hash
---

{% include menu.html %}

Puoi interpolare gli elementi di un hash nelle stringhe tra doppi apici. Scrivili come nel codice del programma: `%data<FR>`. Puoi anche interpolare tutto l'hash. Per farlo, aggiungi parentesi angolari vuote o parentesi graffe vuote: `%data{}`. Questo programma mostra come funziona:

```raku
my %data = FR => 'Paris', IT => 'Rome';

say "%data<FR>";
say "%data<>";

# Oppure:
# say "%data{}";
```

Il programma stampa i dati che vogliamo:

```console
$ raku t.raku
Paris
FR	Paris
IT	Rome
```

Nota che un hash intero può stampare più di una riga.

{% include nav.html %}
