---
title: Quiz — Statement-prefixen
translations_gpt:
---

{% include menu.html %}

Wat print dit programma?

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

`$v` is ongedefinieerd. Als je er `10` bij optelt, gebruikt Raku `0` voor `$v`. Het resultaat is dus `10`. Meestal komt er ook een waarschuwing: "uninitialized value". Maar het prefix `quietly` verbergt die. Het programma print dus alleen `10`.

</div>

{% include nav.html %}
