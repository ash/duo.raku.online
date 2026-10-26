---
title: 'Risinājums: Tipizēts MAIN'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

## Kods

```raku
sub MAIN(Int $n) {
    say $n * 2;
}
```

🦋 Atrodiet programmu failā [typed-main.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/more-on-main/typed-main.raku).

## Izvade

```console
$ raku typed-main.raku 5
10

$ raku typed-main.raku abc
Usage:
  typed-main.raku <n>
```

## Komentāri

1. Parametram ir tips `Int`. Tāpēc vārdam komandrindā jāizskatās pēc vesela skaitļa. Vērtība `5` nonāk `$n`. Tad ķermenis izdrukā `10`.

1. Vērtība `abc` nevar kļūt par `Int`. Tāpēc paraksts neatbilst. Raku neizpilda ķermeni. Tā vietā tas izdrukā lietošanas paziņojumu. Šo paziņojumu Raku izveido pats. Tātad Raku pārbauda argumentus jūsu vietā. Jūs paši nerakstāt nekādas pārbaudes.

{% include nav.html %}
