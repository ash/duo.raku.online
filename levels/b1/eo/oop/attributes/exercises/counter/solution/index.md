---
title: 'Solvo: Nombrilo'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
class Counter {
    has $.count is rw = 0;
}

my $c = Counter.new;
say $c.count;

$c.count++ for ^5;

say $c.count;
```

🦋 Vi povas trovi la fontkodon en la dosiero [counter.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/counter.raku).

## Eligo

```
0
5
```

## Komentoj

1. La atributo estas deklarita kun `is rw`, do ĝia atingilo redonas skribeblan ujon. `= 0` donas al ĝi komencan valoron. La unua `say` montras, ke nova nombrilo vere komenciĝas ĉe ĉi tiu defaŭlto, `0`.

1. La atingilo estas skribebla, do `++` povas pligrandigi ĝin. Tio funkcias, kiel vi atendus.

{% include nav.html %}
