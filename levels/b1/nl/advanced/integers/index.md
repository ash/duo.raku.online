---
title: Gehele getallen
---

{% include menu.html %}

Je hebt gehele getallen al vanaf het begin van de cursus gebruikt. Dit gedeelte bekijkt een paar van hun eigenschappen die niet meteen opvallen.

De belangrijkste is dat gehele getallen in Raku _willekeurige precisie_ hebben. Ze hebben geen vast aantal bytes. Ze lopen nooit stilletjes over en geven dus nooit een fout resultaat. Als er genoeg geheugen is, kan een geheel getal zo groot worden als je nodig hebt:

```raku
say 2 ** 100;
# 1267650600228229401496703205376
```

Dit is de exacte waarde, geen afgeronde. Hetzelfde geldt als je grote getallen vermenigvuldigt. Raku berekent bijvoorbeeld de faculteit van 50 exact:

```raku
my $factorial = 1;
$factorial = $factorial * $_ for 1..50;
say $factorial;
# 30414093201713378043612608166064768844377641568960512000000000000
```

Je kunt de cijfers van lange getallen groeperen met underscores. Zo zijn ze makkelijker te lezen in je code. De compiler negeert de underscores:

```raku
say 1_000_000; # 1000000
```

De volgende onderwerpen laten zien hoe je gehele getallen in andere talstelsels schrijft. Ze behandelen ook een paar handige methoden voor gehele getallen.

{% include nav.html %}
