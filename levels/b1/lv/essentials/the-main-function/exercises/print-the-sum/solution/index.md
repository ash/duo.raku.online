---
title: 'Risinājums: Drukāt summu'
---

{% include menu.html %}

Programmā ir tikai viena `MAIN` funkcija. Tā pieņem divus tipizētus argumentus. Abi tie tiek veidoti no komandrindas argumentiem.

## Kods

Šeit ir risinājums:

```raku
sub MAIN(Int $a, Int $b) {
    say $a + $b;
}
```

🦋 Atrodi programmu failā [print-the-sum.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/print-the-sum.raku).

## Izvade

Izmēģiniet dažādus ievades skaitļus:

```console
$ raku exercises/the-main-function/print-the-sum.raku 500 700
1200
```

Jūs varat arī palaist programmu bez argumentiem vai ar citu tipu argumentiem. Paskatieties, kas tad notiek. Par šādu gadījumu apstrādi mēs runāsim kursa otrajā daļā.

{% include nav.html %}
