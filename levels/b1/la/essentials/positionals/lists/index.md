---
title: Listae
---

{% include menu.html %}

Indices similes sunt arrayibus, sed immutabiles sunt. Hoc significat: magnitudinem aut elementa indicis mutare non potes. Ut indicem crees, parenthesibus utere:

```raku
my $odd = (1, 3, 5, 7, 9);
```

## Subscriptio indicum

Ut singulum elementum indicis obtineas, bracketis quadratis cum indice utere:

```raku
say $odd[3]; # 7
```

Tamen novum valorem ponere non potes:

```raku
$odd[3] = 8; # Non OK
```

Si hoc facere temptas, exceptionem accipis:

    Non potest immutabilem Indicem ((1 3 5 7 9)) mutare
      in block <unit> at t.raku linea 4

## Assignatio indicis ad array

Quid accidit si indicem in variabili servas quae sigillum `@` habet?

```raku
my @data = (40, 42, 44);
```

Hoc in casu, variabilis `@data` array continet, itaque elementa eius mutare potes.

%%tipblock
## Variabilis vs index

Nota: indices immutabiles sunt. Sed variabilem quae indicem continet iterum adhibere potes.

```raku
my $elements = (1, 2);
say $elements[0]; # 1

$elements = (3, 4);
say $elements[0]; # 3
```

%%/tipblock

{% include nav.html %}
