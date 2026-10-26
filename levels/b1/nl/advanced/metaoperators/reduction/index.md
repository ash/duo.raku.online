---
title: Reductie-meta-operatoren
translations_gpt: Reductie-meta-operatoren
---

{% include menu.html %}

Een reductie-meta-operator is een gewone operator tussen vierkante haken, zoals `[+]` of `[*]`. Hij neemt een lijst waarden en zet de operator tussen elk paar ervan. Zo brengt hij de hele lijst terug tot één enkele waarde.

Bijvoorbeeld, `[+]` telt alle elementen van een lijst op:

```raku
my @data = 3, 5, 7, 9, 11;
say [+] @data; # 35
```

De code `[+] @data` is hetzelfde als de operator met de hand uitschrijven:

```raku
say 3 + 5 + 7 + 9 + 11; # 35
```

Elke geschikte infix-operator werkt op dezelfde manier. Met `[*]` krijg je het product van de lijst. Zo kun je het op het bereik `1..$n` gebruiken om makkelijk een faculteit te berekenen:

```raku
my $n = 5;
say [*] 1..$n; # 120
```

Hier geeft het bereik `1..$n` de getallen van 1 tot en met 5, en `[*]` vermenigvuldigt ze: `1 * 2 * 3 * 4 * 5`. Het resultaat is _5!_.

Het werkt ook om tekenreeksen samen te voegen. De `[~]`-reductie voegt een lijst tekenreeksen samen tot één:

```raku
my @strings = <neun hundert fünf und zwanzig>;
say [~] @strings; # neunhundertfünfundzwanzig
```

Je kunt zelfs vergelijkingsoperatoren reduceren. `[<]` vertelt je of elke waarde groter is dan de vorige:

```raku
say [<] 1, 2, 3; # True
```

## Driehoeksreductie

Als je een backslash binnen de haken zet, krijg je een _driehoeks_reductie. Die bewaart alle tussenresultaten, niet alleen het laatste:

```raku
say [\+] 1..5; # (1 3 6 10 15)
```

Elk element van het resultaat is een gedeeltelijke som: `1`, dan `1+2`, dan `1+2+3`, enzovoort. Het laatste is de som van de hele lijst.

{% include nav.html %}
