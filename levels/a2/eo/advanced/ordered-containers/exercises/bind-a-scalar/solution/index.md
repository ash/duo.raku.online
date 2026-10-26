---
title: 'Solvo: Ligi skalaron'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

```raku
my $source = 1;
my $bound := $source;
my $copy = $source;

$source = 9;
say $bound;
say $copy;
```

🦋 Vi povas trovi la fontkodon en la dosiero [bind-a-scalar.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/bind-a-scalar.raku).

## Eligo

```
9
1
```

## Komentoj

1. Ligado per `:=` ne faras kopion. Ĝi faras el `$bound` duan nomon por la ujo de `$source`. Do `$bound` vidas la ŝanĝon de `$source`. Ĝi presas `9`.

1. Normala atribuo per `=` kopias la valoron en alian ujon. Do la posta ŝanĝo ne tuŝas `$copy`. Ĝi ankoraŭ presas `1`.

1. Jen la celo de la tasko. Vi vidas la du manierojn unu apud la alia. `:=` donas komunan ujon. `=` kopias la valoron.

{% include nav.html %}
