---
title: Quiz — Statement-prefixen
translations_gpt:
---

{% include menu.html %}

Wat print het volgende programma?

```raku
my $v;
quietly {
    say $v + 10;
}
```

{:.quiz}
0 | A warning, then 10
1 | 10
0 | Nil
0 | 0

{% include quiz.html %}

<div class="extended-explanation">

Als je `10` optelt bij de ongedefinieerde `$v`, behandelt Raku die als `0` en geeft `10`. Normaal zou er ook een waarschuwing "uninitialized value" komen. Maar het prefix `quietly` verbergt die, dus alleen `10` wordt afgedrukt.

</div>

{% include nav.html %}
