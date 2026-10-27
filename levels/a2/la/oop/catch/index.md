---
title: 'Phasor `CATCH`'
translations_gpt:
---

{% include menu.html %}

Clausula `try` facilis est. Sed pro `try` tota clausula una pars est. Clausula aut operatur aut deficit. Fasis `CATCH` tibi plus potestatis dat. Exceptio est error qui programma sistit. Per `CATCH` exceptionem _intra_ clausulam eius tractas. Haec est clausula cum errore. Ibi decernis quid agas.

`CATCH` fasis est. Fasis est clausula specialis. Raku eam per se certo momento currit. Fases in [sectione de ordine exsecutionis](/la/advanced/phasers) invenisti. `CATCH` ubicumque intra clausulam ponere potes. Currit solum si codex in hac clausula exceptionem iacit. Exceptionem in variabili thematis `$_` accipis:

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

Clausula `default` intra `CATCH` omnem exceptionem tractat. Postquam currit, Raku exceptionem pro tractata habet. Itaque programma non sistit. Post clausulam cum `CATCH` pergit. Ideo programma `after` imprimit.

Sine `CATCH`, `die` programma sistit. Programma numquam ad `after` pervenit.

{% include nav.html %}
