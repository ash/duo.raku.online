---
title: Exceptieobjecten
translations_gpt:
---

{% include menu.html %}

Een exceptie is een object, net als elk ander object in Raku. Als je `die 'something failed'` schrijft, zet Raku je melding in een exceptieobject. Dit object heeft het type `X::AdHoc`.

Binnen een `CATCH` kun je dit object bekijken. Je krijgt zijn type met `.^name` en zijn tekst met `.message`:

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

Als je het type kent, kun je verschillende fouten op verschillende manieren behandelen. Ingebouwde excepties in Raku hebben hun eigen typen, en hun namen beginnen met `X::`. Je kunt met `when` op deze typen matchen. Dat werkt net zoals waarden matchen in een `given`/`when`-blok:

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

Dit drukt `an ad-hoc error: something failed` af. Dat komt doordat de exceptie op het type `X::AdHoc` matchte. Op het type matchen is de basis om specifieke fouten af te handelen. De sectie over [eigen excepties](/nl/oop/custom-exceptions) bouwt op dit idee voort.

{% include nav.html %}
