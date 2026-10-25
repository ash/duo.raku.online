---
title: 'Solvo: Frakcia parto'
---

{% include menu.html %}

Kiel ricevi la frakcian parton de nombro? Forprenu la entjeran parton. Por ricevi la entjeran parton, konvertu la nombron al `Int`.

## Kodo

Jen unu solvo:

```raku
my $n = 15.8972;
say $n - $n.Int;
```

🦋 Trovu la programon en la dosiero [fractional-part.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/fractional-part.raku).

## Eligo

```console
$ raku exercises/coercion/fractional-part.raku
0.8972
```

## Komento

Provu la programon ankaŭ kun negativaj nombroj. Ekzemple:

```raku
my $n = -15.8972;
say $n - $n.Int;
```

Ankaŭ ĉi tie la rezulto estas ĝusta:

```console
$ raku exercises/coercion/fractional-part.raku
-0.8972
```

{% include nav.html %}
