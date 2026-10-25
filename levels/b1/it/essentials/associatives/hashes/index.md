---
title: Hash
---

{% include menu.html %}

Un _hash_ è un altro tipo di dato associativo in Raku. È un tipo aggregato che collega il nome di ogni elemento al suo valore. Le variabili hash usano un nuovo sigillo: `%`.

```raku
my %capitals;
```

Ora puoi usare l'hash e dargli alcuni valori di partenza.

```raku
%capitals = France => 'Paris', Italy => 'Rome';
```

Come con altri tipi di dati, puoi fare le due cose in un solo passo:

```raku
my %capitals = France => 'Paris', Italy => 'Rome';
```

## Accesso agli elementi

L'indicizzazione funziona in modo simile a quello che abbiamo visto per le [coppie](../pairs). Metti una stringa tra parentesi angolari o tra parentesi graffe:

```raku
say %capitals<France>;
say %capitals{'Italy'};
```

Gli hash sono mutabili, quindi puoi cambiare i valori esistenti e aggiungerne di nuovi:

```raku
%capitals<Germany> = 'Berlin';
```

## Chiavi e valori

Un hash ha due metodi incorporati, `keys` e `values`. Restituiscono una lista delle sue chiavi e una lista dei suoi valori:

```raku
say %capitals.keys;
say %capitals.values;
```

Ecco un esempio di quello che stampa questo programma:

    (Germany Italy France)
    (Berlin Rome Paris)

Nota che gli elementi di un hash non hanno un ordine preciso. Ma i metodi qui sopra restituiscono le chiavi e i valori nello stesso ordine.

{% include nav.html %}
