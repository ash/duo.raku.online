---
title: 'Solutio: Modulus clamans'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis. Duobus archivis utitur.

## Codex

Modulus, `Shouter.rakumod`:

```raku
unit module Shouter;

sub shout($s) is export {
    $s.uc
}
```

Programma, `shout.raku`:

```raku
use Shouter;

say shout('hi');
```

🦋 Utrumque archivum fontem in directoria [exercises/advanced/modules-basics/shout-module](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/shout-module) invenies.

## Exitus

```console
$ raku -I. shout.raku
HI
```

## Commentarii

1. Propter proprietatem `is export`, quodlibet programma quod modulo utitur `shout` videre potest.

1. Methodus `.uc` chordam litteris maiusculis reddit.

{% include nav.html %}
