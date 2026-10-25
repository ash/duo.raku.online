---
title: Interpolazione di hash
---

{% include menu.html %}

Puoi interpolare gli elementi di un hash nelle stringhe tra doppi apici. Scrivili come fai nel programma stesso: `%data<FR>`. Per interpolare l'intero hash, aggiungi una coppia di parentesi angolari o graffe vuote: `%data{}`. Il programma seguente mostra come funziona:

```raku
my %data = FR => 'Paris', IT => 'Rome';

say "%data<FR>";
say "%data<>";

# Oppure:
# say "%data{}";
```

Questo programma stampa i dati che abbiamo chiesto:

```console
$ raku t.raku
Paris
FR	Paris
IT	Rome
```

Nota che quando stampi l'intero hash, l'output può occupare più righe.

{% include nav.html %}
