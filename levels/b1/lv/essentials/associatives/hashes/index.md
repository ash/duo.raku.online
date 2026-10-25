---
title: Hashes
translations_gpt:
---

{% include menu.html %}

_Jauktenis_ ir vēl viens asociatīvais datu tips Raku valodā. Tas ir salikts tips, kas sasaista katra elementa nosaukumu ar tā vērtību. Jaukteņu mainīgie lieto jaunu sigilu: `%`.

```raku
my %capitals;
```

Tagad jūs varat lietot jaukteni un dot tam dažas sākuma vērtības.

```raku
%capitals = France => 'Paris', Italy => 'Rome';
```

Tāpat kā ar citiem datu tipiem, abas lietas var izdarīt vienā solī:

```raku
my %capitals = France => 'Paris', Italy => 'Rome';
```

## Piekļuve elementiem

Indeksēšana darbojas līdzīgi tam, ko redzējām [pāriem](../pairs). Ielieciet virkni leņķa iekavās vai figūriekavās:

```raku
say %capitals<France>;
say %capitals{'Italy'};
```

Jaukteņi ir maināmi, tāpēc jūs varat mainīt esošās vērtības un pievienot jaunas:

```raku
%capitals<Germany> = 'Berlin';
```

## Atslēgas un vērtības

Jauktenim ir divas iebūvētas metodes, `keys` un `values`. Tās atgriež tā atslēgu sarakstu un tā vērtību sarakstu:

```raku
say %capitals.keys;
say %capitals.values;
```

Lūk, piemērs tam, ko šī programma izdrukā:

    (Germany Italy France)
    (Berlin Rome Paris)

Ievērojiet, ka jaukteņa elementi nav sakārtoti nekādā secībā. Bet augstāk minētās metodes atgriež atslēgas un vērtības vienā un tajā pašā secībā.

{% include nav.html %}
