---
title: Aumento di stipendio
---

{% include menu.html %}

## Problema

Ecco un hash con i dati di un dipendente:

```raku
my %employee =
    full-name => 'Eliza Vents',
    department => 'Sales',
    salary => 3000;
```

Aumenta lo stipendio del 5&thinsp;% e stampalo insieme al nome del dipendente. Dopo l'aumento, l'hash `%employee` deve ancora contenere i valori corretti.

## Esempio

Ecco cosa deve stampare il programma:

```console
$ raku salary-raise.raku
Nuovo stipendio di Eliza Vents: 3150
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
