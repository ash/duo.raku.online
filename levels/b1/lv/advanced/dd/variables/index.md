---
title: Mainīgo izgūšana
translations_gpt:
---

{% include menu.html %}

Izsauciet `dd`, lai redzētu, kas ir mainīgajā. Jūs to lietojat tāpat kā `say`:

```raku
my $var = 42;
dd $var;
```

`dd` izdrukā gan vērtību, gan mainīgā nosaukumu:

```console
$var = 42
```

Ja mainīgajam ir deklarēts tips, `dd` parāda arī to. Salīdziniet šīs programmas izvadi ar iepriekšējās programmas izvadi:

```raku
my Int $var = 42;
dd $var;
```

```console
Int $var = 42
```

Šī ir galvenā atšķirība no `say`. Viens `dd` izsaukums skalāram pasaka jums mainīgā nosaukumu. Tas pasaka arī datu tipu, kad tas ir zināms. Tāpēc jūs varat pievienot programmai vairākus `dd` izsaukumus. Jūs joprojām redzēsiet, kura izvade pieder kuram mainīgajam.

Jūs varat izmest arī sarežģītākas datu struktūras, piemēram, masīvus vai jaukteņus. Tad `dd` izdrukā vērtību kodam līdzīgā formā:

```raku
my @arr = 10, 20, [1, 2, 3], 30;
dd @arr;
```

```console
[10, 20, [1, 2, 3], 30]
```

Ievērojiet, ka ligzdotais masīvs ir skaidri redzams. Bet mainīgā nosaukums netiek izdrukāts. Tas pats darbojas ar jaukteņiem, un `dd` izdrukā to atslēgas sakārtotā secībā:

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
