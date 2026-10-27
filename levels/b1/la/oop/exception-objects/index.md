---
title: Obiecta exceptionum
translations_gpt:
---

{% include menu.html %}

Exceptio obiectum est, sicut quodlibet aliud obiectum in Raku. Cum `die 'something failed'` scribis, Raku nuntium tuum in obiectum exceptionis ponit. Hoc obiectum genus `X::AdHoc` habet.

Intra `CATCH` hoc obiectum inspicere potes. Genus eius per `.^name` accipis, et textum eius per `.message`:

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

Cum genus nosti, diversos errores diversis modis tractare potes. Exceptiones inbuiltae in Raku sua genera habent, et nomina eorum ab `X::` incipiunt. In his generibus per `when` comparare potes. Hoc eodem modo operatur quo valores in clausula `given`/`when` comparas:

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

Hoc `an ad-hoc error: something failed` imprimit. Hoc fit quia exceptio generi `X::AdHoc` convenit. Genus comparare est modus principalis certos errores tractandi. Sectio de [exceptionibus propriis](/la/oop/custom-exceptions) super hanc ideam aedificat.

{% include nav.html %}
