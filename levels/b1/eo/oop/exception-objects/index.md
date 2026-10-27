---
title: Esceptobjektoj
translations_gpt:
---

{% include menu.html %}

Escepto estas objekto, same kiel ĉiu alia objekto en Raku. Kiam vi skribas `die 'something failed'`, Raku metas vian mesaĝon en esceptobjekton. Ĉi tiu objekto havas la tipon `X::AdHoc`.

Ene de `CATCH`, vi povas ekzameni ĉi tiun objekton. Vi ricevas ĝian tipon per `.^name` kaj ĝian tekston per `.message`:

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

Kiam vi konas la tipon, vi povas trakti malsamajn erarojn en malsamaj manieroj. La enkonstruitaj esceptoj en Raku havas siajn proprajn tipojn, kaj iliaj nomoj komenciĝas per `X::`. Vi povas kongrui kun ĉi tiuj tipoj per `when`. Tio funkcias same kiel la kongruo de valoroj en bloko `given`/`when`:

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

Ĉi tio presas `an ad-hoc error: something failed`. Tio okazas, ĉar la escepto kongruis kun la tipo `X::AdHoc`. Kongrui laŭ la tipo estas la baza maniero trakti specifajn erarojn. La sekcio pri [propraj esceptoj](/eo/oop/custom-exceptions) konstruas sur ĉi tiu ideo.

{% include nav.html %}
