---
title: 'Solvo: Tipita MAIN'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. La tipo `Int` signifas, ke la komandlinia vorto devas aspekti kiel entjero. Kun `5`, la valoro iras en `$n`, kaj la korpo presas `10`.

1. Kun `abc`, la valoro ne povas fariĝi `Int`, do la signaturo ne kongruas. Raku ne rulas la korpon. Anstataŭe, ĝi presas la aŭtomate kreitan uzad-mesaĝon. Do Raku kontrolas la argumentojn por vi. Vi ne bezonas mem skribi iujn ajn kontrolojn.

{% include nav.html %}
