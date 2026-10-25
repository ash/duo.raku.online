---
title: 'Risinājums: Algas palielināšana'
---

{% include menu.html %}

Programmai jāmaina viena no hash vērtībām. Jaunās vērtības piešķiršana notiek gandrīz tāpat kā skalārajam mainīgajam.

## Kods

Šeit ir risinājums:

```raku
my %employee =
    full-name => 'Eliza Vents',
    department => 'Sales',
    salary => 3000;

my $raise = 5; # procentos

%employee<salary> *= (1 + $raise / 100);
say "Jaunā %employee<full-name> alga: %employee<salary>";
```

🦋 Atrodiet programmu failā [salary-raise.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/salary-raise.raku).

## Izvade

Kad palaižat programmu, pārbaudiet, vai jūsu aprēķini ir pareizi. Pārbaudiet arī, vai pareizi pārvērtāt procentus.

```console
$ raku exercises/associatives/salary-raise.raku
Jaunā Eliza Vents alga: 3150
```

{% include nav.html %}
