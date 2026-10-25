---
title: Virkņu savienošana
---

{% include menu.html %}

Ja jums ir divas virknes, jūs varat tās savienot un iegūt jaunu, garāku virkni. To sauc par virkņu savienošanu. Raku valodā jūs savienojat virknes ar—uzminiet, ko?—savienošanas operatoru. Šis operators ir tilde, `~`. Lai savienotu divas virknes, ielieciet `~` starp tām:

```raku
say 'Hello, ' ~ 'World!';
```

Ja mūsu virknes glabājas mainīgajos, mēs varam ‘savienot mainīgos’. Nu, precīzāk sakot, mēs savienojam virknes, kuras šie mainīgie glabā:

```raku
my $greeting = 'Hello, ';
my $who = 'World!';

say $greeting ~ $who;
```

Vai arī jūs varat izveidot jaunu mainīgo, kas glabā savienošanas rezultātu:

```raku
my $greeting = 'Hello, ';
my $who = 'World!';
my $message = $greeting ~ $who;

say $message;
```

## Savienošana ar piešķiršanu

Lai pievienotu jaunu virkni mainīgā beigās, izmantojiet šo formu:

```raku
# Tā vietā, lai izmantotu
$str = $str ~ $another-str;

# izmantojiet:
$str ~= $another-str;
```

{% include nav.html %}
