---
title: Typen Raku-operatoren
---

{% include menu.html %}

Je kent al veel operatoren, zoals `+`, `~` en `++`. Een operator werkt met waarden. Deze waarden heten de operanden. Raku verdeelt operatoren in categorieën. Een categorie is een groep. De categorie hangt af van _waar_ de operator bij zijn operanden staat. Later maak je je eigen operatoren. Dan helpen de categorieën je.

## `prefix`

Een prefix-operator heeft één operand. Hij komt _voor_ deze operand:

```raku
my $x = 5;
say -$x; # -5
say ?$x; # True
```

Hier verandert `-` het teken van het getal. De operator `?` maakt van een waarde `True` of `False`. Dat is de Booleaanse waarde.

## `infix`

Een infix-operator staat _tussen_ twee operanden. Je kent veel operatoren voor getallen en strings. De meeste daarvan zijn infix:

```raku
say 3 + 4;       # 7
say 'a' ~ 'b';   # ab
```

Een infix-operator is niet altijd een symbool. Het kan ook een woord zijn. Neem de `gcd`-operator uit het onderdeel over [gehele getallen](/nl/advanced/integers). Dat is een infix-operator. Je schrijft zijn naam tussen zijn twee operanden:

```raku
say 12 gcd 18;   # 6
```

## `postfix`

Een postfix-operator heeft één operand. Hij komt _na_ deze operand:

```raku
my $x = 5;
$x++;
say $x; # 6
```

## `circumfix` en `postcircumfix`

Een circumfix-operator staat _rond_ zijn operand. Kijk naar de vierkante haken die een array maken. Die zijn een circumfix-operator:

```raku
my @a = [1, 2, 3];
```

Een postcircumfix-operator staat ook rond iets. Maar hij komt na een term. Een term is bijvoorbeeld een variabele. Subscripts zijn postcircumfix-operatoren. Hier is de subscript de `[1]` na `@a`:

```raku
my @a = 10, 20, 30;
say @a[1]; # 20
```

De namen zijn `prefix`, `infix`, `postfix`, `circumfix` en `postcircumfix`. Raku gebruikt dezelfde woorden als je [een nieuwe operator declareert](/nl/advanced/user-defined-operators). Dat zie je later.

{% include nav.html %}
