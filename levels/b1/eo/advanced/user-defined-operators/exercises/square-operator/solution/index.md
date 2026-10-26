---
title: 'Solvo: Kvadratiga operatoro'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
sub postfix:<²>($x) {
    $x ** 2
}

say 5²;
```

🦋 Vi povas trovi la fontkodon en la dosiero [square-operator.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/user-defined-operators/square-operator.raku).

## Eligo

```
25
```

## Komentoj

1. La operatoro estas deklarita kiel `postfix:<²>`. Do ĝia simbolo, la superskribita du, venas post la operando, kiel en `5²`.

1. La korpo levas la operandon al la dua potenco, do `5²` donas `25`. Nenio malhelpas vin uzi Unikodan simbolon, kiu aspektas kiel la kutima matematika skribmaniero.

{% include nav.html %}
