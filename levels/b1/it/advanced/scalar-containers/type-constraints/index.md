---
title: Vincoli di tipo
translations_gpt:
---

{% include menu.html %}

Nella [parte Fondamenti](/it/essentials/typed-variables/type-constraints/), avete impostato il tipo delle variabili con i vincoli di tipo. È importante notare che è il _contenitore_ a controllare questa regola. Decide quali valori può accettare.

Questa dichiarazione crea un contenitore scalare che può contenere solo interi:

```raku
my Int $int;
```

Un contenitore tipizzato accetta solo i valori adatti al suo tipo. Quindi tutte queste assegnazioni vanno bene:

```raku
my Int $int;

$int = 123;       # directly an integer
say $int;

$int = 100 + 23;  # the result is an integer
say $int;

$int = '123'.Int; # a string converted to an integer
say $int;
```

Qui Raku non cambia il tipo in automatico. In Raku, un numero con il punto decimale è un `Rat`. Quindi non potete assegnarlo:

```raku
my Int $int;
$int = 123.45;
```

Ottenete un errore già in fase di compilazione:

```
===SORRY!=== Error while compiling t.raku
Cannot assign a literal of type Rat (123.45) to a variable ($int) of
type Int.  You can declare the variable to be of type Real, or try to
coerce the value with 123.45.Int or Int(123.45), or just write the value
as 123.
at t.raku:2
------> <BOL>⏏$int = 123.45;
```

Per evitare l'errore, convertite voi il valore:

```raku
my Int $int;

$int = 123.45.Int;
say $int; # 123
```

Non fatevi confondere dai due punti in `123.45.Int`. Il primo è il punto decimale. Il secondo chiama il metodo `Int` sul valore razionale, che è un `Rat`.

{% include nav.html %}
