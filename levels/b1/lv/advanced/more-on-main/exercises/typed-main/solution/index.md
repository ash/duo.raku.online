---
title: 'Risinājums: Tipizēts MAIN'
translations_gpt:
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

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

1. Tips `Int` nozīmē, ka komandrindas vārdam jāizskatās pēc vesela skaitļa. Ar `5` vērtība nonāk `$n`, un ķermenis izdrukā `10`.

1. Ar `abc` vērtība nevar kļūt par `Int`, tāpēc paraksts neatbilst. Raku neizpilda ķermeni. Tā vietā tas izdrukā ģenerēto lietošanas paziņojumu. Tātad Raku pārbauda argumentus jūsu vietā. Jums pašiem nav jāraksta nekādas pārbaudes.

{% include nav.html %}
