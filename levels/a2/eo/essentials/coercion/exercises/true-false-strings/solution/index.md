---
title: 'Solvo: Veraj kaj falsaj ĉenoj'
---

{% include menu.html %}

Ĉi tiu ekzerco similas al [la antaŭa](../../true-false-numbers). Sed ĉi-foje la tasko estas iom pli malfacila. Ĉi tie, pli da ŝnuroj povas aspekti kiel `False`. Ni rigardu ilin.

```raku
say ?'';

say ?' ';
say ?'        ';

say ?"\n";

say ?'0';
say ?'0.0';
```

El ĉiuj ĉi tiuj ŝnuroj, nur la malplena ŝnuro fariĝas `False`. Ĉiuj aliaj ŝnuroj fariĝas `True`. Eĉ ŝnuro kun nur spacoj fariĝas `True`. Ŝnuro kun la karaktero `0` ankaŭ estas `True`.

🦋 Vi povas trovi la plenan programon kun la supra ekzemplo en la dosiero [true-false-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/true-false-strings.raku).

{% include nav.html %}
