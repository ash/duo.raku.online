---
title: '`MAIN` funkcija'
---

{% include menu.html %}

Raku programmai sākumā nevajag nekāda īpaša koda. Tāpēc jūs varat uzreiz sākt ar noderīgu kodu. Šis kods nav iekšā nevienā [koda blokā](/lv/essentials/code-blocks). Piemēram, tas nav iekšā [funkcijā](/lv/essentials/functions). Šo programmas daļu mēs saucam par _galveno līniju_.

Programmā var būt funkcija ar īpašu nosaukumu `MAIN`. Tādā gadījumā Raku vispirms visu kompilē. Tad Raku izpilda galvenās līnijas kodu. Pēc tam Raku izpilda `MAIN` funkciju.

```raku
say '1. Galvenās līnijas kods';

sub MAIN {
    say '3. MAIN izsaukts';
}

say '2. Arī galvenā līnija';
```

Vispirms šī programma izpilda augstākā līmeņa `say` komandas. Tad tā izsauc `MAIN`:

```console
$ raku t.raku
1. Galvenās līnijas kods
2. Arī galvenā līnija
3. MAIN izsaukts
```

Protams, programmā var būt arī tikai `MAIN` funkcija. Tad tajā nav cita galvenās līnijas koda.

{% include nav.html %}
