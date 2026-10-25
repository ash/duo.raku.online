---
title: Meerdere `MAIN` functies
---

{% include menu.html %}

Net als elke andere functie in Raku kan `MAIN` `multi`-varianten hebben. Zo kan het programma op verschillende invoer anders reageren. De invoer kan een ander aantal parameters hebben. Of de parameters kunnen andere types hebben.

```raku
multi sub MAIN($a) {
    say 2 * $a;
}

multi sub MAIN($a, $b) {
    say $a + $b;
}
```

Met één argument verdubbelt dit programma het. Met twee argumenten telt het ze op:

```console
$ raku t.raku 21
42

$ raku t.raku 21 33
54
```

{% include nav.html %}
