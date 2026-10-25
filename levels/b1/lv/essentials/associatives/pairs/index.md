---
title: Pāri
---

{% include menu.html %}

Pāris ir datu struktūra, kas glabā kopā vārdu un vērtību. Tie veido vienu objektu, kuru var glabāt skalārā mainīgajā. Lūk, kā izveido pāri:

```raku
my $pair = name => 'Anna';
```

Mainīgā `$pair` tips ir `Pair`:

```raku
say $pair.WHAT; # (Pair)
```

Vārdu un vērtību var iegūt atsevišķi ar metodēm `key` un `value`:

```raku
say $pair.key; # name
say $pair.value; # Anna
```

Svarīga pāru īpašība ir tā, ka tie ir nemainīgi. Tas nozīmē, ka esošam pārim nevar dot jaunu vērtību vai jaunu vārdu. Bet, protams, tam pašam mainīgajam var piešķirt pilnīgi jaunu pāri:

```raku
my $pair = name => 'Anna';
$pair = name => 'John';
say $pair.value; # John
```

## Indeksēšana

Ir vēl viens veids, kā nolasīt pāra vērtību. Jūs varat to indeksēt ar tā atslēgas nosaukumu leņķa iekavās. Lūk, kā to dara:

```raku
say $pair<name>;
```

Ievērojiet, ka atslēgu nav jāliek pēdiņās, ja tajā nav atstarpju. Ja tajā ir atstarpes, noteikumi ir mazliet stingrāki:

```raku
my $pair = 'employee name' => 'Julie Madelon';
say $pair{'employee name'};
```

Pievērsiet uzmanību: šoreiz mēs izmantojam līkās iekavas.

{% include nav.html %}
