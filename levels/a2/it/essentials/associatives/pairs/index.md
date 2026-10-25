---
title: Coppie
---

{% include menu.html %}

Una coppia è una struttura dati. Contiene un nome e un valore. Insieme formano un solo oggetto. Puoi tenere questo oggetto in una variabile scalare. Ecco come creare una coppia:

```raku
my $pair = name => 'Anna';
```

La variabile `$pair` ha il tipo `Pair`:

```raku
say $pair.WHAT; # (Pair)
```

Puoi prendere il nome e il valore separatamente. Il metodo `key` dà il nome. Il metodo `value` dà il valore:

```raku
say $pair.key; # name
say $pair.value; # Anna
```

Le coppie hanno una caratteristica importante. Sono immutabili. Questo vuol dire che non puoi dare un nuovo valore a una coppia. Non puoi neanche darle un nuovo nome. Certo, puoi assegnare una coppia completamente nuova alla stessa variabile:

```raku
my $pair = name => 'Anna';
$pair = name => 'John';
say $pair.value; # John
```

## Sottoscrizione

C'è un altro modo per leggere il valore di una coppia. Puoi sottoscrivere la coppia. Metti il nome della sua chiave tra parentesi angolari. Ecco come:

```raku
say $pair<name>;
```

Nota che una chiave senza spazi non ha bisogno di virgolette. Se la chiave ha spazi, le regole sono un po' più rigide:

```raku
my $pair = 'employee name' => 'Julie Madelon';
say $pair{'employee name'};
```

Nota che questa volta il codice usa le parentesi graffe.

{% include nav.html %}
