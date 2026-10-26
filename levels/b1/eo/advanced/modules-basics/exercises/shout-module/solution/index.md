---
title: 'Solvo: Krianta modulo'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo. Ĝi uzas du dosierojn.

## Kodo

La modulo, `Shouter.rakumod`:

```raku
unit module Shouter;

sub shout($s) is export {
    $s.uc
}
```

La programo, `shout.raku`:

```raku
use Shouter;

say shout('hi');
```

🦋 Vi povas trovi ambaŭ fontdosierojn en la dosierujo [exercises/advanced/modules-basics/shout-module](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/shout-module).

## Eligo

```console
$ raku -I. shout.raku
HI
```

## Komentoj

1. Danke al la trajto `is export`, ĉiu programo, kiu uzas la modulon, povas vidi `shout`.

1. La metodo `.uc` redonas la ĉenon per majuskloj.

{% include nav.html %}
