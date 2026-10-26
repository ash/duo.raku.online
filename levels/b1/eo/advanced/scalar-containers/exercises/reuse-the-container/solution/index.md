---
title: 'Solvo: Tipita aŭ netipita'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo de la tasko.

## Kodo

```raku
my $untyped;
my Int $typed;

dd $untyped;
dd $typed;

$untyped = 42;
$typed = 42;

dd $untyped;
dd $typed;
```

🦋 Vi povas trovi la fontkodon en la dosiero [reuse-the-container.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/reuse-the-container.raku).

## Eligo

```
$untyped = Any
Int $typed = Int
$untyped = 42
Int $typed = 42
```

## Komentoj

1. `dd` priskribas la du ujojn malsame. Por la netipita, ĝi presas nur `$untyped`. Por la tipita, ĝi metas la deklaritan tipon antaŭe: `Int $typed`. Ĉi tiu prefikso estas ĝuste tio, kion ŝanĝas deklarita tipo.

1. Ankaŭ la malplenaj valoroj estas malsamaj. Netipita ujo komenciĝas kun la simpla nedifinita valoro `Any`. Sed tipita ujo komenciĝas kun la nedifinita valoro de *sia* tipo, `Int`.

1. Post kiam vi atribuas `42` al ambaŭ, la valoroj aspektas same. Sed `$typed` ankoraŭ havas sian tipon, do ĝi ne akceptus ne-entjeran valoron. `$untyped`, aliflanke, akceptas ion ajn.

{% include nav.html %}
