---
title: 'Fāzeris `CATCH`'
translations_gpt:
---

{% include menu.html %}

Bloku `try` ir viegli lietot. Bet `try` visu bloku uztver kā vienu gabalu. Bloks vai nu darbojas, vai neizdodas. Fāzeris `CATCH` dod jums vairāk vadības. Izņēmums ir kļūda, kas aptur programmu. Ar `CATCH` jūs apstrādājat izņēmumu tā bloka _iekšā_. Tas ir bloks ar kļūdu. Tur jūs izlemjat, ko darīt.

`CATCH` ir fāzeris. Fāzeris ir īpašs bloks. Raku to izpilda pats noteiktā brīdī. Fāzerus jūs jau redzējāt [sadaļā par vadības plūsmu](/lv/advanced/phasers). `CATCH` jūs varat likt jebkur bloka iekšā. Tas izpildās tikai tad, ja kods šajā blokā izmet izņēmumu. Izņēmumu jūs saņemat tēmas mainīgajā `$_`:

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

Programma izdrukā:

```
Caught: Boom!
after
```

Bloks `default` fāzerī `CATCH` apstrādā katru izņēmumu. Kad tas izpildās, izņēmums skaitās apstrādāts. Tāpēc programma neapstājas. Tā turpina darbu aiz bloka ar `CATCH`. Tāpēc programma izdrukā `after`.

Ja nav `CATCH`, `die` aptur programmu. Programma nekad nenonāk līdz `after`.

{% include nav.html %}
