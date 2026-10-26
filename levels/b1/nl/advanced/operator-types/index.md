---
title: Typen Raku-operatoren
---

{% include menu.html %}

Je hebt al veel operatoren gebruikt, zoals `+`, `~` en `++`. De operanden zijn de waarden waarmee een operator werkt. In Raku worden operatoren in categorieën verdeeld, op basis van _waar_ ze bij hun operanden staan. Als je de categorieën kent, helpt dat je later, wanneer je je eigen operatoren maakt.

## `prefix`

Een prefix-operator komt _voor_ zijn enige operand:

```raku
my $x = 5;
say -$x; # -5
say ?$x; # True
```

Hier verandert `-` het teken van het getal. De operator `?` zet een waarde om naar zijn Booleaanse waarde.

## `infix`

Een infix-operator staat _tussen_ twee operanden. De meeste rekenkundige en string-operatoren die je kent, werken zo:

```raku
say 3 + 4;       # 7
say 'a' ~ 'b';   # ab
```

Een infix-operator hoeft geen symbool te zijn. Het kan ook een woord zijn. De `gcd`-operator uit het onderdeel [gehele getallen](/nl/advanced/integers) is bijvoorbeeld een infix-operator. Het is een naam die je tussen zijn twee operanden schrijft:

```raku
say 12 gcd 18;   # 6
```

## `postfix`

Een postfix-operator komt _na_ zijn enige operand:

```raku
my $x = 5;
$x++;
say $x; # 6
```

## `circumfix` en `postcircumfix`

Een circumfix-operator staat _rond_ zijn operand. De vierkante haken die een array maken, zijn een voorbeeld:

```raku
my @a = [1, 2, 3];
```

Een postcircumfix-operator staat ook rond iets, maar hij komt na een term. Een subscript, zoals de `[1]` na `@a`, is een postcircumfix-operator:

```raku
my @a = 10, 20, 30;
say @a[1]; # 20
```

Dit zijn de namen van de categorieën: `prefix`, `infix`, `postfix`, `circumfix` en `postcircumfix`. Zoals je later zult zien, gebruikt Raku dezelfde woorden om [een nieuwe operator te declareren](/nl/advanced/user-defined-operators).

{% include nav.html %}
