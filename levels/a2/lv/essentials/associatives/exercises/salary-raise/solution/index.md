---
title: 'Risinājums: Algas palielināšana'
---

{% include menu.html %}

Programmai jāmaina viena hash vērtība. Jūs tai piešķirat jaunu vērtību. Tas ir gandrīz tāpat kā ar skalāro mainīgo.

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

Palaidiet programmu. Pārbaudiet, ka aprēķini ir pareizi. Pārbaudiet arī, ka jūs pareizi pārvēršat procentus.

```console
$ raku exercises/associatives/salary-raise.raku
Jaunā Eliza Vents alga: 3150
```

{% include nav.html %}
