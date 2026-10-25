---
title: 'Risinājums: Drukāt summu'
---

{% include menu.html %}

Programmā ir tikai viena funkcija, `MAIN`. Tā pieņem divus argumentus ar tipiem. Abi argumenti saņem savas vērtības no komandrindas.

## Kods

Šeit ir risinājums:

```raku
sub MAIN(Int $a, Int $b) {
    say $a + $b;
}
```

🦋 Atrodi programmu failā [print-the-sum.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/print-the-sum.raku).

## Izvade

Izmēģiniet dažādus skaitļus:

```console
$ raku exercises/the-main-function/print-the-sum.raku 500 700
1200
```

Jūs varat arī palaist programmu bez argumentiem. Vai arī jūs varat izmantot citu tipu argumentus. Paskatieties, kas notiek. Kursa otrā daļa rāda, kā apstrādāt šādus gadījumus.

{% include nav.html %}
