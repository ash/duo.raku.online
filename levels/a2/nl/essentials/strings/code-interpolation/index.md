---
title: Code interpolatie
---

{% include menu.html %}

Code interpolatie is het volgende niveau van interpolatie. U kunt code direct in een string met dubbele aanhalingstekens zetten. De code kan eenvoudig zijn. Hij kan ook complex zijn!

Schrijf de code tussen accolades, `{` en `}`:

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

Hier is één manier om deze methode te gebruiken. Soms staat er tekst direct na een variabele. Raku kan deze tekst dan per ongeluk als deel van de naam lezen. Om dat te voorkomen, zet u de variabele tussen accolades:

```raku
my $hoeveel = 5;
my $wat = 'pak';
say "Er zijn $hoeveel {$wat}ken."; # Er zijn 5 pakken.
```

Zonder accolades probeert Raku een variabele `$watken` te interpoleren. Maar zo'n variabele bestaat niet.

{% include nav.html %}
