---
title: 'Risinājums: Ziņojiet un atgūstieties'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
my $timeout = 30;

{
    die 'config missing';
    $timeout = 60;

    CATCH {
        default {
            say "warning: {.message}; keeping default";
        }
    }
}

say "timeout is $timeout seconds";
```

🦋 Atrodiet programmu failā [report-and-recover.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/catch/report-and-recover.raku).

## Izvade

```
warning: config missing; keeping default
timeout is 30 seconds
```

## Komentāri

1. `die` izmet izņēmumu. Tad Raku izlaiž pārējo bloku. Tāpēc rinda `$timeout = 60` nekad neizpildās. `$timeout` patur savu noklusējuma vērtību, `30`.

1. `CATCH` apstrādā izņēmumu. Tas izdrukā brīdinājumu. Tāpēc programma neapstājas. Tā turpina darbu ar noklusējuma vērtību. Tieši to nozīmē *atkopties* no kļūdas. Jūs pamanāt problēmu. Tā vietā jūs lietojat kaut ko drošu. Tad jūs turpināt darbu.

{% include nav.html %}
