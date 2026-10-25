---
title: Virkņu savienošana
---

{% include menu.html %}

Jūs varat savienot divas virknes kopā. Tad jūs iegūstat jaunu, garāku virkni. Mēs to saucam par virkņu savienošanu. Raku valodā jūs savienojat virknes ar operatoru. Vai jūs varat uzminēt tā nosaukumu? Tas ir savienošanas operators! Šis operators ir tilde: `~`. Lai savienotu divas virknes, ielieciet `~` starp tām:

```raku
say 'Hello, ' ~ 'World!';
```

Dažreiz virknes ir mainīgajos. Tad mēs varam ‘savienot mainīgos’. Nu, patiesībā mēs savienojam virknes šajos mainīgajos:

```raku
my $greeting = 'Hello, ';
my $who = 'World!';

say $greeting ~ $who;
```

Jūs varat arī ielikt rezultātu jaunā mainīgajā:

```raku
my $greeting = 'Hello, ';
my $who = 'World!';
my $message = $greeting ~ $who;

say $message;
```

## Savienošana un piešķiršana vienā solī

Dažreiz jūs gribat pievienot virkni mainīgā beigās. Tad izmantojiet šo formu:

```raku
# Tā vietā, lai izmantotu
$str = $str ~ $another-str;

# izmantojiet:
$str ~= $another-str;
```

{% include nav.html %}
