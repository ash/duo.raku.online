---
title: Nosauktie parametri
---

{% include menu.html %}

_Nosauktie_ parametri nav tādi kā [pozicionālie parametri](../positional-parameters). Izsaukumā jūs rakstāt to nosaukumus.

Šī funkcija pieņem divus parametrus. To nosaukumi ir `$from` un `$to`.

```raku
sub distance(:$from, :$to) { $from - $to }
```

Lai izsauktu funkciju, uzrakstiet katra argumenta nosaukumu:

```raku
say distance(from => 30, to => 10); # 20
```

Nenododiet argumentus kā pozicionālos. Tā ir kļūda. Piemēram, izsaukums `distance(30, 10)` dod kļūdu:

    Pārāk daudz pozicionālo argumentu; tika gaidīti 0 argumenti, bet tika saņemti 2
        sub distance pie t.raku 1. rindas
        blokā <unit> pie t.raku 2. rindas

Lūk, labā ziņa. Jūs varat rakstīt nosauktos argumentus jebkurā secībā. Šie divi izsaukumi dara tieši to pašu:

```raku
say distance(from => 30, to => 10); # 20

say distance(to => 10, from => 30); # 20
```

## Mainīgo nodošana

Dažreiz jūs gribat nodot vērtību no mainīgā. Mainīgajam ir tāds pats nosaukums kā parametram. Tad palīdz īpaša sintakse. Ar to jūs rakstāt mazāk:

```raku
my $from = 30;
my $to = 10;
say distance(:$from, :$to); # 20
```

Šis izsaukums dara to pašu, ko garāks izsaukums:

```raku
say distance(from => $from, to => $to); # 20
```

Atkal secība nav svarīga:

```raku
say distance(:$to, :$from); # 20
```

Dažreiz mainīgajam un parametram ir dažādi nosaukumi. Tad nododiet pāri vienā no šiem veidiem:

```raku
my $a = 20;
my $b = 10;

say distance(from => $a, to => $b);

# vai:

say distance(:from($a), :to($b));
```

{% include nav.html %}
