---
title: Pāri
---

{% include menu.html %}

Pāris ir datu struktūra. Tas glabā vārdu un vērtību. Kopā tie veido vienu veselu objektu. Šo objektu var glabāt skalārā mainīgajā. Lūk, kā izveidot pāri:

```raku
my $pair = name => 'Anna';
```

Mainīgajam `$pair` ir tips `Pair`:

```raku
say $pair.WHAT; # (Pair)
```

Jūs varat iegūt vārdu un vērtību atsevišķi. Metode `key` dod vārdu. Metode `value` dod vērtību:

```raku
say $pair.key; # name
say $pair.value; # Anna
```

Pāriem ir svarīga īpašība. Tie ir nemainīgi. Tas nozīmē, ka pārim nevar dot jaunu vērtību. Tam nevar dot arī jaunu vārdu. Protams, tam pašam mainīgajam var piešķirt pilnīgi jaunu pāri:

```raku
my $pair = name => 'Anna';
$pair = name => 'John';
say $pair.value; # John
```

## Indeksēšana

Ir vēl viens veids, kā nolasīt pāra vērtību. Jūs varat pāri indeksēt. Ielieciet tā atslēgas nosaukumu leņķa iekavās. Lūk, kā:

```raku
say $pair<name>;
```

Ievērojiet, ka atslēgai bez atstarpēm nav vajadzīgas pēdiņas. Ja atslēgā ir atstarpes, noteikumi ir mazliet stingrāki:

```raku
my $pair = 'employee name' => 'Julie Madelon';
say $pair{'employee name'};
```

Ievērojiet, ka šoreiz kods izmanto līkās iekavas.

{% include nav.html %}
