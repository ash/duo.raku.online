---
title: Benoemde parameters
---

{% include menu.html %}

_Benoemde_ parameters zijn anders dan [positionele parameters](../positional-parameters). In een aanroep schrijf je hun namen.

Deze functie neemt twee parameters aan. Hun namen zijn `$from` en `$to`.

```raku
sub distance(:$from, :$to) { $from - $to }
```

Om de functie aan te roepen, schrijf je de naam van elk argument:

```raku
say distance(from => 30, to => 10); # 20
```

Geef de argumenten niet door zoals positionele argumenten. Dat is een fout. De aanroep `distance(30, 10)` geeft bijvoorbeeld een fout:

    Too many positionals passed; expected 0 arguments but got 2
        in sub distance at t.raku line 1
        in block <unit> at t.raku line 2

Nu het goede nieuws. Je kunt benoemde argumenten in elke volgorde schrijven. Deze twee aanroepen doen precies hetzelfde:

```raku
say distance(from => 30, to => 10); # 20

say distance(to => 10, from => 30); # 20
```

## Variabelen doorgeven

Soms wil je een waarde uit een variabele doorgeven. De variabele heeft dezelfde naam als de parameter. Dan helpt een speciale syntaxis. Daarmee typ je minder:

```raku
my $from = 30;
my $to = 10;
say distance(:$from, :$to); # 20
```

Deze aanroep doet hetzelfde als een langere aanroep:

```raku
say distance(from => $from, to => $to); # 20
```

Ook hier maakt de volgorde niet uit:

```raku
say distance(:$to, :$from); # 20
```

Soms hebben de variabele en de parameter verschillende namen. Geef dan op een van deze manieren een paar door:

```raku
my $a = 20;
my $b = 10;

say distance(from => $a, to => $b);

# of:

say distance(:from($a), :to($b));
```

{% include nav.html %}
