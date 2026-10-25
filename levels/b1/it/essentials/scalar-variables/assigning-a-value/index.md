---
title: Assegnazione di un valore
---

{% include menu.html %}

Per mettere un nuovo valore in un contenitore scalare, usa l'operatore `=`.

```raku
my $name;
$name = 'Anna';
```

Ora puoi usare la variabile, per esempio, per stamparla:

```raku
say $name;
```

## Più variabili in una volta

Puoi assegnare valori a più variabili nello stesso momento. Per esempio, ecco come assegnare due scalari in una sola istruzione:

```raku
my ($a, $b);
($a, $b) = 10, 20;
```

Nota che non puoi togliere le parentesi sul lato sinistro. Ma puoi aggiungerle anche sul lato destro, così i due lati sono uguali:

```raku
($a, $b) = (10, 20);
```

{% include nav.html %}
