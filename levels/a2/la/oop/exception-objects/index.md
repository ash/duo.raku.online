---
title: Obiecta exceptionum
translations_gpt:
---

{% include menu.html %}

Exceptio errorem in programmate describit. In Raku obiectum est, sicut omne aliud obiectum. Scribis `die 'something failed'`. Tum Raku nuntium tuum in obiectum exceptionis ponit. Genus huius obiecti est `X::AdHoc`.

Clausula `CATCH` exceptionem capit. Intra eam hoc obiectum inspicere potes. `.^name` genus eius dat. `.message` textum eius dat:

```raku
{
    die 'something failed';

    CATCH {
        default {
            say .^name;   # X::AdHoc
            say .message; # something failed
        }
    }
}
```

Genus utile est. Per id quemque errorem suo modo tractare potes. Quaeque exceptio inbuilta in Raku suum genus habet. Nomina horum generum ab `X::` incipiunt. Haec genera per `when` comparare potes. Idem cum valoribus in clausula `given`/`when` fecisti:

```raku
{
    die 'something failed';

    CATCH {
        when X::AdHoc {
            say 'an ad-hoc error: ' ~ .message;
        }
        default {
            say 'some other error';
        }
    }
}
```

Hoc `an ad-hoc error: something failed` imprimit. Hoc fit quia exceptio generi `X::AdHoc` convenit. Ut certum genus erroris tractes, genus eius comparas. Haec est idea fundamentalis. Sectio de [exceptionibus propriis](/la/oop/custom-exceptions) super eam aedificat.

{% include nav.html %}
