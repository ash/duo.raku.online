---
title: 'Phasor `CATCH`'
translations_gpt:
---

{% include menu.html %}

Clausula `try` commoda est, sed totam clausulam ut unum tractat. Clausula aut operatur aut non. Fasis `CATCH` tibi plus potestatis dat. Tibi permittit exceptionem _intra_ clausulam tractare ubi accidit. Deinde decernis quid agas.

`CATCH` fasis est, sicut eae quas in [sectione de ordine exsecutionis](/la/advanced/phasers) vidisti. Eam ubicumque intra clausulam ponere potes. Currit solum si exceptio in illa clausula iacitur. Exceptionem ut variabilem thematis `$_` accipis:

```raku
{
    die 'Boom!';

    CATCH {
        default {
            say 'Caught: ' ~ .message;
        }
    }
}

say 'after';
```

Programma imprimit:

```
Caught: Boom!
after
```

Clausula `default` intra `CATCH` quamlibet exceptionem tractat. Postquam cucurrit, exceptio pro tractata habetur. Itaque programma non sistit. Post clausulam circa `CATCH` pergit, et ideo `after` imprimitur.

Sine `CATCH`, `die` programma finiret antequam ad `after` perveniret.

{% include nav.html %}
