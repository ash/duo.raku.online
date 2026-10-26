---
title: Reductie-meta-operatoren
translations_gpt: Reductie-meta-operatoren
---

{% include menu.html %}

Je schrijft een reductie-meta-operator als een gewone operator tussen vierkante haken. Voorbeelden zijn `[+]` en `[*]`. Hij neemt een lijst waarden. Hij zet de operator tussen elk paar waarden. Zo wordt de hele lijst één enkele waarde.

Bijvoorbeeld, `[+]` telt alle elementen van een lijst op:

```raku
my @data = 3, 5, 7, 9, 11;
say [+] @data; # 35
```

`[+] @data` is hetzelfde als alle operatoren zelf uitschrijven:

```raku
say 3 + 5 + 7 + 9 + 11; # 35
```

Andere infix-operatoren kunnen ook zo werken. Met `[*]` krijg je het product van de lijst. Gebruik het met het bereik `1..$n`. Dat is een makkelijke manier om een faculteit te berekenen:

```raku
my $n = 5;
say [*] 1..$n; # 120
```

Hier geeft het bereik `1..$n` de getallen van 1 tot en met 5. Dan vermenigvuldigt `[*]` ze: `1 * 2 * 3 * 4 * 5`. Dat is _5!_.

Het werkt ook met tekenreeksen. De `[~]`-reductie plakt een lijst tekenreeksen aan elkaar tot één tekenreeks:

```raku
my @strings = <neun hundert fünf und zwanzig>;
say [~] @strings; # neunhundertfünfundzwanzig
```

Je kunt zelfs vergelijkingsoperatoren reduceren. `[<]` zegt of elke waarde groter is dan de waarde ervoor:

```raku
say [<] 1, 2, 3; # True
```

## Driehoeksreductie

Zet een backslash binnen de haken. Dan krijg je een _driehoeks_reductie. Die bewaart het resultaat van elke stap, niet alleen het laatste resultaat:

```raku
say [\+] 1..5; # (1 3 6 10 15)
```

Elk element van het resultaat is de som van de eerste paar getallen: `1`, dan `1+2`, dan `1+2+3`, enzovoort. Het laatste element is de som van de hele lijst.

{% include nav.html %}
