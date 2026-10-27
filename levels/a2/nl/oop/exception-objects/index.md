---
title: Exceptieobjecten
translations_gpt:
---

{% include menu.html %}

Een exceptie beschrijft een fout in het programma. In Raku is ze een object, net als elk ander object. Je schrijft `die 'something failed'`. Dan zet Raku je melding in een exceptieobject. Het type van dit object is `X::AdHoc`.

Een `CATCH`-blok vangt de exceptie. Daarin kun je naar dit object kijken. `.^name` geeft zijn type. `.message` geeft zijn tekst:

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

Het type is handig. Daarmee kun je elke fout op een eigen manier behandelen. Elke ingebouwde exceptie in Raku heeft een eigen type. De namen van deze typen beginnen met `X::`. Je kunt deze typen matchen met `when`. Je deed hetzelfde met waarden in een `given`/`when`-blok:

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

Dit drukt `an ad-hoc error: something failed` af. Dat gebeurt omdat de exceptie op het type `X::AdHoc` matcht. Om een bepaalde soort fout af te handelen, match je haar type. Dat is het basisidee. De sectie over [eigen excepties](/nl/oop/custom-exceptions) bouwt erop voort.

{% include nav.html %}
