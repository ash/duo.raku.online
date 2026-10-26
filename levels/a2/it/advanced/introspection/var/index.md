---
title: Usare `VAR`
---

{% include menu.html %}

`VAR` è uno pseudo-metodo. Restituisce l'oggetto contenitore dietro una variabile. Per una variabile scalare, `.VAR` restituisce il suo contenitore `Scalar`.

## `^name`

Ora hai il contenitore. Puoi chiedere il nome della sua classe con `.^name`:

```raku
my $var1 = 42;
my $var2 = '42';

say $var1.^name;     # Int
say $var1.VAR.^name; # Scalar

say $var2.^name;     # Str
say $var2.VAR.^name; # Scalar
```

`.^name` sulla variabile restituisce il tipo del _valore_. È `Int` o `Str`. `.VAR.^name` restituisce il tipo del _contenitore_. In tutti e due i casi, è `Scalar`.

## `default`

Il metodo `default` restituisce il valore predefinito del contenitore. Un contenitore vuoto ti dà questo valore. Non ha un valore suo. Puoi impostare tu il valore predefinito con il trait `is default`:

```raku
my Str $language is default('Raku');
say $language.VAR.default; # Raku
```

Forse non imposti un valore predefinito. Allora il valore predefinito è il tipo del contenitore. Un contenitore senza tipo ha il valore predefinito `Any`. Non importa quale valore c'è dentro adesso:

```raku
my $language = 'Raku';
say $language.VAR.default; # (Any)
```

Per un contenitore con un tipo, il valore predefinito è quel tipo:

```raku
my Str $language;
say $language.VAR.default; # (Str)
```

## `name`

Il metodo `name` restituisce il nome del contenitore, con il sigillo:

```raku
my $language;
say $language.VAR.name; # $language
```

Non confondere `^name` e `name`. `^name` dà il tipo. `name` dà il nome della variabile.

{% include nav.html %}
