---
title: Assegnazione di un valore
---

{% include menu.html %}

L'operatore `=` mette un nuovo valore in un contenitore scalare.

```raku
my $name;
$name = 'Anna';
```

Ora puoi usare la variabile. Per esempio, puoi stamparla:

```raku
say $name;
```

## Due o più variabili in una volta

Puoi assegnare valori a più variabili in una volta. Per esempio, qui un'istruzione assegna valori a due scalari:

```raku
my ($a, $b);
($a, $b) = 10, 20;
```

Devi scrivere le parentesi sul lato sinistro. Non puoi toglierle. Anche sul lato destro puoi aggiungerle. Così i due lati sono uguali:

```raku
($a, $b) = (10, 20);
```

{% include nav.html %}
