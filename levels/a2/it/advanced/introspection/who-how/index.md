---
title: '`WHO` e `HOW`'
---

{% include menu.html %}

Altri due strumenti per l'introspezione sono `HOW` e `WHO`. Completano l'insieme.

## `HOW`

Ogni valore in Raku ha un _metaoggetto_ dietro di sé. Un metaoggetto è un oggetto. Sa come funziona il tipo del valore. `HOW` sta per _Higher Order Workings_. Restituisce il metaoggetto:

```raku
my $x = 42;
say $x.HOW.^name; # Perl6::Metamodel::ClassHOW
```

Usi già il metaoggetto. Forse non te ne sei accorto. Il `.^` in `.^name` è una chiamata di metodo. Questa chiamata passa per `HOW`. Queste due righe fanno la stessa cosa:

```raku
my $x = 42;
say $x.^name;        # Int
say $x.HOW.name($x); # Int
```

Quindi `$x.^name` è solo un modo breve per scrivere `$x.HOW.name($x)`. Nota che l'oggetto entra di nuovo come argomento. Perché? Tutti i valori di un tipo *condividono* un solo metaoggetto. I metodi del metaoggetto sono meta-metodi. Un meta-metodo deve sapere di quale oggetto chiedi. La forma `.^` passa l'oggetto per te. Per `name`, Raku non usa questo argomento. Ma il modo giusto e generale è passarlo. Alcuni meta-metodi lo usano davvero.

Questo vale anche per altri meta-metodi. Un esempio è `.^methods`. Dà una lista di metodi. Puoi chiamare questi metodi sul valore.

## `WHO`

`WHO` restituisce il _package_ di un nome. È una tabella dei nomi, o simboli, in quel namespace:

```raku
say Int.WHO.^name; # Stash
```

Uno `Stash` è un hash per una tabella di simboli. È utile con i moduli. Così puoi cercare i nomi di un modulo. Ci torniamo nella [sezione sui moduli](/it/advanced/module-introspection). Per ora, ricorda solo che `WHO` esiste. Ricorda anche cosa ti dà.

{% include nav.html %}
