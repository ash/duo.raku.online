---
title: Hash
---

{% include menu.html %}

Un _hash_ è un altro tipo di dato associativo in Raku. È un tipo di dato aggregato. Contiene molti elementi. Ogni elemento ha un nome e un valore. Le variabili hash usano un nuovo sigillo: `%`.

```raku
my %capitals;
```

Ora puoi usare l'hash. Puoi assegnargli alcuni valori di partenza.

```raku
%capitals = France => 'Paris', Italy => 'Rome';
```

Puoi anche fare le due cose insieme. Questo funziona anche con altri tipi di dati:

```raku
my %capitals = France => 'Paris', Italy => 'Rome';
```

## Prendere gli elementi

Per prendere un elemento, indicizzi l'hash. Lo fai come con le [coppie](../pairs). Metti una stringa tra parentesi angolari o tra parentesi graffe:

```raku
say %capitals<France>;
say %capitals{'Italy'};
```

Gli hash sono mutabili. Questo vuol dire che puoi cambiarli. Puoi cambiare i valori. Puoi anche aggiungerne di nuovi:

```raku
%capitals<Germany> = 'Berlin';
```

## Chiavi e valori

Raku ha due metodi incorporati per gli hash, `keys` e `values`. Il metodo `keys` restituisce una lista delle chiavi. Il metodo `values` restituisce una lista dei valori:

```raku
say %capitals.keys;
say %capitals.values;
```

Il programma può stampare questo, per esempio:

    (Germany Italy France)
    (Berlin Rome Paris)

Nota che gli elementi di un hash non hanno un ordine. Ma i due metodi usano lo stesso ordine.

{% include nav.html %}
