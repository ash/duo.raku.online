---
title: 'Solvo: Nombrilo'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. La atributo havas `is rw`. Do ĝia atingilo redonas ujon, en kiun vi povas skribi. `= 0` donas al la atributo komencan valoron. La unua `say` kontrolas novan nombrilon. Ĝi vere komenciĝas ĉe la defaŭlto, `0`.

1. Vi povas skribi en la atingilon. Do `++` funkcias, kiel vi atendas. Ĝi aldonas 1 al la nombro.

{% include nav.html %}
