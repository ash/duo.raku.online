---
title: 'Risinājums: Pārāk liels'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
class TooBig is Exception {
    has $.value;
    has $.limit;

    method message {
        "Value $.value exceeds the limit of $.limit";
    }
}

my $limit = 50;

for 30, 99, 60 -> $value {
    TooBig.new(value => $value, limit => $limit).throw if $value > $limit;
    say "Value $value is within the limit";

    CATCH {
        when TooBig {
            say .message;
            say "Try a value up to {.limit}.";
        }
    }
}
```

🦋 Atrodiet programmu failā [too-big.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/custom-exceptions/too-big.raku).

## Izvade

```
Value 30 is within the limit
Value 99 exceeds the limit of 50
Try a value up to 50.
Value 60 exceeds the limit of 50
Try a value up to 50.
```

## Komentāri

1. `TooBig is Exception` padara klasi par izņēmumu. Jūs varat to izmest. Tā glabā divus datu gabalus, `value` un `limit`. Tās metode `message` ieliek tos abus tekstā.

1. `.throw` izmet izņēmumu. `when TooBig` tam atbilst pēc tipa. Kods zarā `when TooBig` ir apstrādātājs. Tas ne tikai izdrukā paziņojumu. Tas arī nolasa atribūtu `limit` no noķertā objekta. Ar to apstrādātājs dod noderīgu padomu. Tāpēc paša definēts izņēmums ir labāks par vienkāršu virkni. Apstrādātājs saņem datus skaidrā formā. Tas var uz šiem datiem reaģēt.

1. Programma izmet izņēmumu **tikai** tad, kad `$value > $limit`. Vērtībai `30` izņēmuma nav. Cikla ķermenis izpildās līdz beigām. Tā `say` izdrukā, ka vērtība ir robežās. Vērtībām `99` un `60` notiek `throw`. Tāpēc programma izlaiž šo `say`. Tā vietā izņēmumu apstrādā `CATCH`. Šeit `CATCH` ir tieši cikla `for` ķermenī. Tāpēc noķerts izņēmums beidz tikai pašreizējo piegājienu. Tad cikls vienkārši turpina ar nākamo vērtību.

{% include nav.html %}
