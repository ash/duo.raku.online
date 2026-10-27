---
title: 'Fāzeris `CATCH`'
translations_gpt:
---

{% include menu.html %}

Bloks `try` ir ērts, bet tas visu bloku uztver kā vienu veselumu. Bloks vai nu nostrādā, vai ne. Fāzeris `CATCH` dod jums vairāk vadības. Tas ļauj apstrādāt izņēmumu _iekšpus_ tā bloka, kurā tas notika. Pēc tam jūs izlemjat, ko darīt.

`CATCH` ir fāzeris, tāpat kā tie, ko redzējāt [sadaļā par vadības plūsmu](/lv/advanced/phasers). To var likt jebkur bloka iekšā. Tas izpildās tikai tad, ja šajā blokā tiek izmests izņēmums. Izņēmumu jūs saņemat kā tēmas mainīgo `$_`:

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

Bloks `default` fāzerī `CATCH` apstrādā jebkuru izņēmumu. Kad tas ir izpildījies, izņēmums skaitās apstrādāts. Tāpēc programma neapstājas. Tā turpinās aiz bloka, kurā ir `CATCH`, un tāpēc tiek izdrukāts `after`.

Ja nebūtu `CATCH`, `die` būtu beidzis programmu, pirms tā nonāktu līdz `after`.

{% include nav.html %}
