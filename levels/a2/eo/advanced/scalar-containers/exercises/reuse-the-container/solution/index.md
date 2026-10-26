---
title: 'Solvo: Tipita aŭ netipita'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

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

1. `dd` montras la du ujojn en malsamaj manieroj. Por la netipita, ĝi presas nur `$untyped`. Por la tipita, ĝi aldonas la deklaritan tipon antaŭe: `Int $typed`. Ĝuste tion ŝanĝas deklarita tipo.

1. Ankaŭ la malplenaj valoroj estas malsamaj. Netipita ujo komenciĝas kun `Any`. Tio estas la baza nedifinita valoro. Tipita ujo komenciĝas kun la nedifinita valoro de *sia* tipo. Ĉi tie, tio estas `Int`.

1. Poste ambaŭ variabloj ricevas `42`. Nun la valoroj aspektas same. Sed `$typed` ankoraŭ havas sian tipon. Ĝi ne akceptas valoron, kiu ne estas entjero. `$untyped` akceptas ajnan valoron.

{% include nav.html %}
