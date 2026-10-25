---
title: Saraksti
---

{% include menu.html %}

Saraksti ir līdzīgi masīviem, bet tie ir nemaināmi. Tas nozīmē, ka jūs nevarat mainīt saraksta izmēru vai elementus. Lai izveidotu sarakstu, izmantojiet iekavas:

```raku
my $odd = (1, 3, 5, 7, 9);
```

## Sarakstu indeksēšana

Lai iegūtu vienu saraksta elementu, izmantojiet kvadrātiekavas ar indeksu:

```raku
say $odd[3]; # 7
```

Tomēr jūs nevarat iestatīt jaunu vērtību:

```raku
$odd[3] = 8; # Nav OK
```

Ja jūs mēģināt to izdarīt, jūs saņemat izņēmumu:

    Nevar modificēt nemaināmu sarakstu ((1 3 5 7 9))
      blokā <unit> pie t.raku 4. rindas

## Saraksta piešķiršana masīvam

Kas notiek, ja jūs saglabājat sarakstu mainīgajā ar `@` sigilu?

```raku
my @data = (40, 42, 44);
```

Šajā gadījumā mainīgais `@data` glabā masīvu, tāpēc jūs varat mainīt tā elementus.

%%tipblock
## Mainīgais vs saraksts

Ievērojiet, ka saraksti ir nemaināmi. Bet jūs joprojām varat atkārtoti izmantot mainīgo, kas glabā sarakstu.

```raku
my $elements = (1, 2);
say $elements[0]; # 1

$elements = (3, 4);
say $elements[0]; # 3
```

%%/tipblock

{% include nav.html %}
