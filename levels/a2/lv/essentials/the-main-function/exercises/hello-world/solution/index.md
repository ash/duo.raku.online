---
title: 'Risinājums: Sveika, Pasaule!'
---

{% include menu.html %}

Mēs jau esam tālu kursā. Bet mums jāatgriežas pie šīs programmas. Kāpēc? Mēs tikko iemācījāmies jaunu veidu, kā rakstīt Raku programmas.

## Kods 1

```raku
sub MAIN() {
    say 'Sveika, pasaule!';
}
```

🦋 Atrodi programmu failā [hello-world.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/hello-world.raku).

## Kods 2

```raku
unit sub MAIN;
say 'Sveika, pasaule!';
```

🦋 Atrodi programmu failā [hello-world-unit.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/hello-world-unit.raku).

## Piemērs

Palaid vienu no abām programmām:

```console
$ raku exercises/the-main-function/hello-world.raku
Sveika, pasaule!

$ raku exercises/the-main-function/hello-world-unit.raku
Sveika, pasaule!
```

{% include nav.html %}
