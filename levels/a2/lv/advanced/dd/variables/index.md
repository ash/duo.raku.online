---
title: Mainīgo izgūšana
translations_gpt:
---

{% include menu.html %}

Lai redzētu mainīgā vērtību, izsauciet `dd`. Tas ir līdzīgi kā ar `say`:

```raku
my $var = 42;
dd $var;
```

`dd` parāda vērtību. Tā parāda arī mainīgā nosaukumu:

```console
$var = 42
```

Mainīgajam var būt deklarēts tips. Tad `dd` parāda arī tipu. Salīdziniet šīs programmas izvadi ar iepriekšējo:

```raku
my Int $var = 42;
dd $var;
```

```console
Int $var = 42
```

Šī ir galvenā atšķirība no `say`. Izsauciet `dd` vienu reizi skalāram. Tā parāda jums mainīgā nosaukumu. Tā parāda arī datu tipu, ja Raku to zina. Tāpēc jūs varat ielikt programmā vairākus `dd` izsaukumus. Jūs joprojām zināt, kura izvade ir no kura mainīgā.

Jūs varat izmest arī lielākas datu struktūras, piemēram, masīvus vai jaukteņus. Tad `dd` izdrukā vērtību kodam līdzīgā formā:

```raku
my @arr = 10, 20, [1, 2, 3], 30;
dd @arr;
```

```console
[10, 20, [1, 2, 3], 30]
```

Ievērojiet, ka jūs skaidri redzat iekšējo masīvu. Bet šeit `dd` neizdrukā mainīgā nosaukumu. Ar jaukteņiem tas strādā tāpat. `dd` izdrukā jaukteņa atslēgas sakārtotā secībā:

```raku
my %hash =
    gamma => 'g',
    alpha => 'a',
    beta  => 'b';
dd %hash;
```

```console
{:alpha("a"), :beta("b"), :gamma("g")}
```

{% include nav.html %}
