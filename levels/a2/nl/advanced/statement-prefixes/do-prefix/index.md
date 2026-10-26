---
title: do en de waarde van een blok
translations_gpt:
---

{% include menu.html %}

Een blok alleen is een statement, geen expressie. Je kunt het dus meestal niet aan een variabele toewijzen. Het prefix `do` maakt van een blok een expressie. De waarde ervan is de waarde van het **laatste** statement in het blok:

```raku
my $x = do {
    my $a = 3;
    $a + 4;
};

say $x; # 7
```

In het blok kun je variabelen maken. Je kunt meerdere statements draaien en een resultaat berekenen. `do` geeft de waarde van het blok terug. Dat is handig als één expressie niet genoeg is voor een waarde.

`do` werkt ook vóór control-flow-statements. Deze statements kiezen of herhalen code. Met `do` geven ze ook een waarde terug:

```raku
my $sign = do given 5 {
    when * > 0 { 'positive' }
    when * < 0 { 'negative' }
    default    { 'zero' }
};

say $sign; # positive
```

Hier maakt `do given` van de hele `given`/`when` een expressie. De waarde ervan is `positive`. Hetzelfde werkt met `do if` en `do for`. Kort gezegd: met `do` kan een blok staan waar Raku een waarde nodig heeft. Het werkt ook voor besturingsstructuren.

{% include nav.html %}
