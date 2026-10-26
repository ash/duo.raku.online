---
title: 'Solvo: Ligi skalaron'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo de la tasko.

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

1. Ligado per `:=` ne faras kopion. Ĝi faras el `$bound` alian nomon por la sama ujo kiel `$source`. Do la ŝanĝo de `$source` videblas tra `$bound`, kiu presas `9`.

1. Normala atribuo per `=` kopias la valoron en apartan ujon. Do la posta ŝanĝo ne influas `$copy`, kaj ĝi ankoraŭ presas `1`.

1. La tuta celo estas vidi la du unu apud la alia. `:=` kunhavigas ujon, dum `=` faras kopion de la valoro.

{% include nav.html %}
