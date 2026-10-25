---
title: Nosauktie parametri
---

{% include menu.html %}

Atšķirībā no [pozicionālajiem parametriem](../positional-parameters), _nosauktos_ parametrus atpazīst pēc to nosaukumiem.

Šai funkcijai ir divi parametri, kurus sauc `$from` un `$to`.

```raku
sub distance(:$from, :$to) { $from - $to }
```

Lai izsauktu šo funkciju, jums jāraksta argumentu nosaukumi:

```raku
say distance(from => 30, to => 10); # 20
```

Ja jūs nododat argumentus tā, it kā tie būtu pozicionāli, jūs saņemat kļūdu. Piemēram, izsaukums `distance(30, 10)` izraisa kļūdu:

    Pārāk daudz pozicionālo argumentu; tika gaidīti 0 argumenti, bet tika saņemti 2
        sub distance pie t.raku 1. rindas
        blokā <unit> pie t.raku 2. rindas

Labā ziņa ir tā, ka jūs varat uzskaitīt nosauktos argumentus jebkurā secībā. Šie divi izsaukumi ir tieši vienādi:

```raku
say distance(from => 30, to => 10); # 20

say distance(to => 10, from => 30); # 20
```

## Mainīgo nodošana

Dažreiz vērtība, ko jūs gribat nodot, ir saglabāta mainīgajā. Mainīgajam var būt arī tāds pats nosaukums kā parametram. Tad jūs varat izmantot īpašu sintaksi, kas ļauj rakstīt mazāk:

```raku
my $from = 30;
my $to = 10;
say distance(:$from, :$to); # 20
```

Tas ir līdzīgi garākam izsaukumam:

```raku
say distance(from => $from, to => $to); # 20
```

Atkal, secība šeit nav svarīga:

```raku
say distance(:$to, :$from); # 20
```

Ja mainīgā un parametra nosaukumi ir dažādi, nododiet pāri. Izmantojiet vienu no šiem veidiem:

```raku
my $a = 20;
my $b = 10;

say distance(from => $a, to => $b);

# vai:

say distance(:from($a), :to($b));
```

{% include nav.html %}
