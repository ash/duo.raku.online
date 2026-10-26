---
title: do en de waarde van een blok
translations_gpt:
---

{% include menu.html %}

Een blok op zichzelf is een statement, geen expressie. Je kunt het dus normaal niet aan een variabele toewijzen. Het prefix `do` verandert een blok in een expressie. De waarde daarvan is de waarde van het **laatste** statement van het blok:

```raku
my $x = do {
    my $a = 3;
    $a + 4;
};

say $x; # 7
```

Binnen het blok kun je variabelen declareren, meerdere statements uitvoeren en een resultaat berekenen. Daarna geeft `do` de waarde van het blok terug. Dat is handig als je meer dan één expressie nodig hebt om een waarde te krijgen.

`do` werkt ook vóór control-flow-statements. Dan kunnen die ook een waarde teruggeven:

```raku
my $sign = do given 5 {
    when * > 0 { 'positive' }
    when * < 0 { 'negative' }
    default    { 'zero' }
};

say $sign; # positive
```

Hier verandert `do given` de hele `given`/`when` in een expressie met de waarde `positive`. Hetzelfde werkt met `do if` en `do for`. Kortom: met `do` kun je een blok gebruiken op een plek waar een waarde verwacht wordt. Dat werkt ook voor een besturingsstructuur.

{% include nav.html %}
