---
title: 'Solutio: Duo genera exceptionum'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

## Codex

```raku
class TooSmall is Exception {
    method message { 'too small' }
}

class TooBig is Exception {
    method message { 'too big' }
}

for TooSmall, TooBig -> $type {
    {
        $type.new.throw;

        CATCH {
            when TooSmall { say 'small' }
            when TooBig   { say 'big' }
        }
    }
}
```

🦋 Inveni codicem fontem in archivo [two-exceptions.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/custom-exceptions/two-exceptions.raku).

## Exitus

```
small
big
```

## Commentarii

1. In primo gyro anulus `TooSmall` iacit. In secundo gyro `TooBig` iacit. Anulus utramque intra suam clausulam iacit. Quaeque clausula suam `CATCH` habet.

1. Fasis `CATCH` ramum `when` pro quoque genere exceptionis habet. In quoque gyro solus unus ramus currit. Hic est ramus pro genere exceptionis iactae. Itaque primus gyrus `small` imprimit, et secundus `big`. Quisque ramus `when` est tractator pro uno genere. Itaque una series tractatorum quodque genus erroris aliter tractare potest.

{% include nav.html %}
