---
title: Izņēmumu objekti
translations_gpt:
---

{% include menu.html %}

Izņēmums apraksta kļūdu programmā. Raku valodā tas ir objekts, tāpat kā jebkurš cits objekts. Jūs rakstāt `die 'something failed'`. Tad Raku ieliek jūsu paziņojumu izņēmuma objektā. Šī objekta tips ir `X::AdHoc`.

Bloks `CATCH` noķer izņēmumu. Tā iekšā jūs varat apskatīt šo objektu. `.^name` dod tā tipu. `.message` dod tā tekstu:

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

Tips ir noderīgs. Ar to jūs varat apstrādāt katru kļūdu savā veidā. Katram iebūvētajam izņēmumam Raku valodā ir savs tips. Šo tipu nosaukumi sākas ar `X::`. Ar `when` jūs varat salīdzināt ar šiem tipiem. To pašu jūs darījāt ar vērtībām blokā `given`/`when`:

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

Tas izdrukā `an ad-hoc error: something failed`. Tā notiek, jo izņēmums atbilst tipam `X::AdHoc`. Lai apstrādātu noteiktu kļūdas veidu, jūs salīdzināt ar tās tipu. Tā ir pamata ideja. Sadaļa par [pašu definētiem izņēmumiem](/lv/oop/custom-exceptions) būvē uz tās.

{% include nav.html %}
