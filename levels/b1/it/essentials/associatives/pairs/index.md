---
title: Coppie
---

{% include menu.html %}

Una coppia è una struttura dati che tiene insieme un nome e un valore. Formano un unico oggetto, che puoi salvare in una variabile scalare. Ecco come si crea una coppia:

```raku
my $pair = name => 'Anna';
```

Il tipo della variabile `$pair` è `Pair`:

```raku
say $pair.WHAT; # (Pair)
```

Puoi prendere il nome e il valore separatamente con i metodi `key` e `value`:

```raku
say $pair.key; # name
say $pair.value; # Anna
```

Una caratteristica importante delle coppie è che sono immutabili. Vuol dire che non puoi dare a una coppia esistente un nuovo valore o un nuovo nome. Ma naturalmente puoi assegnare una coppia completamente nuova alla stessa variabile:

```raku
my $pair = name => 'Anna';
$pair = name => 'John';
say $pair.value; # John
```

## Sottoscrizione

C'è un altro modo per leggere il valore di una coppia. Puoi sottoscriverla con il nome della sua chiave tra parentesi angolari. Ecco come:

```raku
say $pair<name>;
```

Nota che non servono virgolette intorno alla chiave se non ha spazi. Se ha spazi, le regole sono un po' più rigide:

```raku
my $pair = 'employee name' => 'Julie Madelon';
say $pair{'employee name'};
```

Fai attenzione: questa volta usiamo le parentesi graffe.

{% include nav.html %}
