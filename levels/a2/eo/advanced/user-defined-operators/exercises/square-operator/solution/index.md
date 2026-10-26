---
title: 'Solvo: Kvadratiga operatoro'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. Ni deklaras la operatoron kiel `postfix:<²>`. Ĝia simbolo estas malgranda, levita cifero du. Vi skribas ĝin post ĝia operando, kiel en `5²`.

1. La korpo levas la operandon al la dua potenco. Do `5²` donas `25`. Vi rajtas uzi Unikodan simbolon. Ĝi povas aspekti ĝuste kiel en matematiko.

{% include nav.html %}
