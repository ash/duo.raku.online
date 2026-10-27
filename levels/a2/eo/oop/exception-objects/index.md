---
title: Esceptobjektoj
translations_gpt:
---

{% include menu.html %}

Escepto priskribas eraron en la programo. En Raku, ĝi estas objekto, kiel ĉiu alia objekto. Vi skribas `die 'something failed'`. Tiam Raku metas vian mesaĝon en esceptobjekton. La tipo de ĉi tiu objekto estas `X::AdHoc`.

Bloko `CATCH` kaptas la escepton. Ene de ĝi, vi povas rigardi ĉi tiun objekton. `.^name` donas ĝian tipon. `.message` donas ĝian tekston:

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

La tipo estas utila. Per ĝi, vi povas trakti ĉiun eraron laŭ ĝia propra maniero. Ĉiu enkonstruita escepto en Raku havas sian propran tipon. La nomoj de ĉi tiuj tipoj komenciĝas per `X::`. Vi povas kongrui kun ĉi tiuj tipoj per `when`. Vi faris la samon kun valoroj en bloko `given`/`when`:

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

Ĉi tio presas `an ad-hoc error: something failed`. Tio okazas, ĉar la escepto kongruas kun la tipo `X::AdHoc`. Por trakti certan specon de eraro, vi kongruas kun ĝia tipo. Tio estas la baza ideo. La sekcio pri [propraj esceptoj](/eo/oop/custom-exceptions) konstruas sur ĝi.

{% include nav.html %}
