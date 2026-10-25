---
title: Diapazoni
---

{% include menu.html %}

Raku valodā diapazoni izveido sarakstus ar elementiem, kas seko viens pēc otra.

Vienkāršākajā gadījumā diapazons ir saraksts ar veseliem skaitļiem, kas pieaug par vienu. Lai izveidotu diapazonu, izmantojiet operatoru `..` un divas vērtības. Tās nosaka diapazona minimālo un maksimālo vērtību:

```raku
1 .. 5
```

Atstarpes ap operatoru nav obligātas. Tāpēc to pašu diapazonu varat uzrakstīt šādi:

```raku
1..5
```

Diapazons ir veids, kā izveidot sarakstus, bet tas joprojām ir viens objekts. Tāpēc jūs varat to saglabāt skalārajā mainīgajā:

```raku
my $r = 1 .. 5;
```

## Ne tikai skaitļi

Diapazoni var izmantot arī citus datu tipus, ja Raku zina, kā palielināt to vērtības. Piemēram:

```raku
my $letters = 'a' .. 'z';
```

Raku valodā diapazoni ir sava datu tipa objekti. Mainīgā `$r` tips ir `Range`.

{% include nav.html %}
