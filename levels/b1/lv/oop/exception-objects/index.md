---
title: Izņēmumu objekti
translations_gpt:
---

{% include menu.html %}

Izņēmums ir objekts, gluži kā jebkurš cits objekts Raku valodā. Kad jūs rakstāt `die 'something failed'`, Raku ieliek jūsu paziņojumu izņēmuma objektā. Šim objektam ir tips `X::AdHoc`.

`CATCH` iekšā jūs varat izpētīt šo objektu. Tā tipu jūs iegūstat ar `.^name`, bet tekstu ar `.message`:

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

Kad jūs zināt tipu, dažādas kļūdas varat apstrādāt dažādi. Raku iebūvētajiem izņēmumiem ir savi tipi, un to nosaukumi sākas ar `X::`. Ar `when` jūs varat salīdzināt ar šiem tipiem. Tas darbojas tāpat kā vērtību salīdzināšana blokā `given`/`when`:

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

Tas izdrukā `an ad-hoc error: something failed`. Tas ir tāpēc, ka izņēmums atbilda tipam `X::AdHoc`. Salīdzināšana pēc tipa ir pamata veids, kā apstrādāt konkrētas kļūdas. Sadaļa par [pašu definētiem izņēmumiem](/lv/oop/custom-exceptions) būvē uz šīs idejas.

{% include nav.html %}
