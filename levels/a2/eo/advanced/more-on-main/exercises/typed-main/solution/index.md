---
title: 'Solvo: Tipita MAIN'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
sub MAIN(Int $n) {
    say $n * 2;
}
```

🦋 Vi povas trovi la fontkodon en la dosiero [typed-main.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/more-on-main/typed-main.raku).

## Eligo

```console
$ raku typed-main.raku 5
10

$ raku typed-main.raku abc
Usage:
  typed-main.raku <n>
```

## Komentoj

1. La parametro havas la tipon `Int`. Do la vorto en la komandlinio devas aspekti kiel entjero. La valoro `5` iras en `$n`. Tiam la korpo presas `10`.

1. La valoro `abc` ne povas fariĝi `Int`. Do la signaturo ne kongruas. Raku ne rulas la korpon. Anstataŭe ĝi presas la uzad-mesaĝon. Raku mem kreas ĉi tiun mesaĝon. Do Raku kontrolas la argumentojn por vi. Vi mem skribas neniujn kontrolojn.

{% include nav.html %}
