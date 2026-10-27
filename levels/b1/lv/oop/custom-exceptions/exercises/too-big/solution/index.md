---
title: 'Risinājums: Pārāk liels'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams risinājums.

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

1. `TooBig is Exception` padara klasi par izņēmumu, ko var izmest. Tā nes divus datu gabalus, `value` un `limit`. Tās metode `message` ieliek tos abus tekstā, ko tā ziņo.

1. `.throw` izmet izņēmumu, un `when TooBig` tam atbilst pēc tipa. Apstrādātājs ne tikai izdrukā paziņojumu. Tas tieši no noķertā objekta nolasa atribūtu `limit`, lai dotu noderīgu padomu. Tāpēc paša definēts izņēmums ir labāks par vienkāršu virkni. Apstrādātājs saņem datus ar skaidru struktūru, uz kuriem tas var reaģēt.

1. Izņēmums tiek izmests **tikai** tad, kad `$value > $limit`. Vērtībai `30` izņēmuma nav, un cikla ķermenis izpildās līdz savam `say`. Tas izdrukā, ka vērtība ir robežās. Vērtībām `99` un `60` notiek `throw`, tāpēc šis `say` tiek izlaists. Tā vietā izņēmumu apstrādā `CATCH`. Cikla `for` ķermenis pats ir bloks, ko `CATCH` sargā. Tāpēc noķerts izņēmums beidz tikai pašreizējo piegājienu. Tad cikls vienkārši pāriet uz nākamo vērtību.

{% include nav.html %}
