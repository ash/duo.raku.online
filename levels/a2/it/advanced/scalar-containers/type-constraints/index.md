---
title: Vincoli di tipo
translations_gpt:
---

{% include menu.html %}

Nella [parte Fondamenti](/it/essentials/typed-variables/type-constraints/), avete imparato a dare un tipo a una variabile. Lo avete fatto con un vincolo di tipo. Ecco un punto importante. Il _contenitore_ controlla questa regola. Decide quali valori accetta.

Questa dichiarazione crea un contenitore scalare. Può contenere solo interi:

```raku
my Int $int;
```

Un contenitore con tipo accetta solo valori adatti al suo tipo. Così tutte queste assegnazioni funzionano:

```raku
my Int $int;

$int = 123;       # directly an integer
say $int;

$int = 100 + 23;  # the result is an integer
say $int;

$int = '123'.Int; # a string converted to an integer
say $int;
```

In questo caso, Raku non cambia il tipo da solo. In Raku, un numero con il punto decimale è un valore `Rat`. Così non potete assegnarlo:

```raku
my Int $int;
$int = 123.45;
```

Ottenete l'errore durante la compilazione. Questo succede prima che il programma parta:

```
===SORRY!=== Error while compiling t.raku
Cannot assign a literal of type Rat (123.45) to a variable ($int) of
type Int.  You can declare the variable to be of type Real, or try to
coerce the value with 123.45.Int or Int(123.45), or just write the value
as 123.
at t.raku:2
------> <BOL>⏏$int = 123.45;
```

Convertite voi il valore. Allora non c'è nessun errore:

```raku
my Int $int;

$int = 123.45.Int;
say $int; # 123
```

In `123.45.Int` ci sono due punti. Non fatevi confondere. Il primo punto è il punto decimale. Il secondo punto chiama il metodo `Int`. Questo metodo lavora sul valore `Rat`, un numero razionale.

{% include nav.html %}
