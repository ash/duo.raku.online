---
title: Code interpolatie
---

{% include menu.html %}

Code interpolatie is het volgende niveau van interpolatie. Hiermee kunt u code direct in een string met dubbele aanhalingstekens plaatsen. De code kan eenvoudig zijn, of zelfs complex!

De code die u wilt interpoleren, komt tussen accolades:

```raku
my $a = 10;
my $b = 20;
say "De som van $a en $b is {$a + $b}.";
```

Het programma print:

```console
$ raku t.raku 
De som van 10 en 20 is 30.
```

## Opnieuw variabelen

Eén toepassing van deze methode is wanneer er tekst na een variabele moet komen. Die tekst kan per ongeluk gelezen worden als de rest van de naam van de variabele. Om dat te voorkomen, zet u de variabele tussen accolades:

```raku
my $hoeveel = 5;
my $wat = 'pak';
say "Er zijn $hoeveel {$wat}ken."; # Er zijn 5 pakken.
```

Zonder accolades zou Raku proberen `$watken` te interpoleren, een variabele die niet bestaat.

{% include nav.html %}
