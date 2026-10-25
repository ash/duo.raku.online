---
title: Saraksti
---

{% include menu.html %}

Saraksti ir līdzīgi masīviem, bet tie ir nemaināmi. Jūs nevarat mainīt saraksta izmēru. Jūs nevarat mainīt arī tā elementus. Lai izveidotu sarakstu, izmantojiet iekavas:

```raku
my $odd = (1, 3, 5, 7, 9);
```

## Sarakstu indeksēšana

Lai iegūtu vienu saraksta elementu, izmantojiet kvadrātiekavas. Ielieciet tajās indeksu:

```raku
say $odd[3]; # 7
```

Bet jūs nevarat dot elementam jaunu vērtību:

```raku
$odd[3] = 8; # Nav OK
```

Ja mēģināt, jūs saņemat izņēmumu:

    Nevar modificēt nemaināmu sarakstu ((1 3 5 7 9))
      blokā <unit> pie t.raku 4. rindas

## Saraksta piešķiršana masīvam

Jūs varat saglabāt sarakstu mainīgajā ar `@` sigilu. Kas tad notiek?

```raku
my @data = (40, 42, 44);
```

Tad mainīgais `@data` satur masīvu. Jūs varat mainīt tā elementus.

%%tipblock
## Mainīgais vai saraksts

Saraksts ir nemaināms. Bet jūs joprojām varat atkal izmantot tā mainīgo. Jūs varat ielikt tajā jaunu sarakstu.

```raku
my $elements = (1, 2);
say $elements[0]; # 1

$elements = (3, 4);
say $elements[0]; # 3
```

%%/tipblock

{% include nav.html %}
