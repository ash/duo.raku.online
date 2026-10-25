---
title: Listae
---

{% include menu.html %}

Indices similes arrayibus sunt, sed immutabiles sunt. Magnitudinem indicis mutare non potes. Neque elementa eius mutare potes. Parenthesibus indicem crea:

```raku
my $odd = (1, 3, 5, 7, 9);
```

## Indicatio indicum

Ut unum elementum indicis obtineas, bracketis quadratis utere. Indicem in eis pone:

```raku
say $odd[3]; # 7
```

Sed elemento novum valorem dare non potes:

```raku
$odd[3] = 8; # Non OK
```

Si temptas, exceptionem accipis:

    Non potest immutabilem Indicem ((1 3 5 7 9)) mutare
      in block <unit> at t.raku linea 4

## Assignatio indicis ad array

Indicem in variabili cum sigillo `@` servare potes. Quid tum accidit?

```raku
my @data = (40, 42, 44);
```

Tum variabilis `@data` array continet. Elementa eius mutare potes.

%%tipblock
## Variabilis aut index

Index immutabilis est. Sed variabilem eius iterum adhibere potes. Novum indicem in eam ponere potes.

```raku
my $elements = (1, 2);
say $elements[0]; # 1

$elements = (3, 4);
say $elements[0]; # 3
```

%%/tipblock

{% include nav.html %}
