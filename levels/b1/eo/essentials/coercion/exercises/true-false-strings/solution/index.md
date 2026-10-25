---
title: 'Solvo: Veraj kaj falsaj ĉenoj'
---

{% include menu.html %}

Ĉi tiu ekzerco estas simila al [la antaŭa](../../true-false-numbers). Sed ĉi-foje, la tasko estas iom pli malfacila. Estas pli da ‘suspektaj’ ŝnuroj, kiuj povus esti traktataj kiel `False`. Ni esploru ilin.

```raku
say ?'';

say ?' ';
say ?'        ';

say ?"\n";

say ?'0';
say ?'0.0';
```

El ĉiuj ĉi tiuj ŝnuroj, nur la malplena ŝnuro estas konvertita al `False`. Ĉiuj aliaj ŝnuroj fariĝas `True`, eĉ se ili enhavas nur spacojn aŭ la karakteron `0`.

🦋 Vi povas trovi la plenan programon kun la supra ekzemplo en la dosiero [true-false-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/true-false-strings.raku).

{% include nav.html %}
