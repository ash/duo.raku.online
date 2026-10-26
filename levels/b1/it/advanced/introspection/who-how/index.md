---
title: '`WHO` e `HOW`'
---

{% include menu.html %}

Gli ultimi due strumenti di introspezione dell'insieme sono `HOW` e `WHO`.

## `HOW`

Dietro ogni valore in Raku c'è un _metaoggetto_. È un oggetto che sa come funziona il tipo del valore. `HOW`, che sta per _Higher Order Workings_, restituisce questo metaoggetto:

```raku
my $x = 42;
say $x.HOW.^name; # Perl6::Metamodel::ClassHOW
```

In realtà, hai sempre usato il metaoggetto, forse senza accorgertene. Il `.^` in `.^name` è una chiamata di metodo che passa per `HOW`. Queste due righe fanno la stessa cosa:

```raku
my $x = 42;
say $x.^name;        # Int
say $x.HOW.name($x); # Int
```

Quindi `$x.^name` è solo un modo più breve di scrivere `$x.HOW.name($x)`. Nota che l'oggetto viene passato di nuovo come argomento. Questo perché ogni valore del tipo *condivide* lo stesso metaoggetto. Quindi bisogna dire a un meta-metodo di quale oggetto stai chiedendo. La forma `.^` lo fa per te in automatico. Per `name`, in realtà l'argomento viene ignorato. Ma passarlo è la forma corretta e generale, perché alcuni meta-metodi lo usano davvero.

Lo stesso vale per altri meta-metodi che potresti incontrare, come `.^methods`. Elenca i metodi che puoi chiamare su un valore.

## `WHO`

`WHO` restituisce il _package_ a cui appartiene un nome. È la tabella dei simboli che sono definiti in quel namespace:

```raku
say Int.WHO.^name; # Stash
```

Uno `Stash` è un hash che contiene una tabella dei simboli. Diventa utile quando lavori con i moduli. Allora ti permette di cercare i nomi che un modulo definisce. Ci torneremo nella [sezione sui moduli](/it/advanced/module-introspection). Per ora basta sapere che `WHO` esiste e cosa restituisce.

{% include nav.html %}
