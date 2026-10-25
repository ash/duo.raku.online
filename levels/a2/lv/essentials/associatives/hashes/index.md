---
title: Hashes
translations_gpt:
---

{% include menu.html %}

_Jauktenis_ ir vēl viens asociatīvais datu tips Raku valodā. Tas ir salikts datu tips. Tas glabā daudzus elementus. Katram elementam ir nosaukums un vērtība. Jaukteņu mainīgie lieto jaunu sigilu: `%`.

```raku
my %capitals;
```

Tagad jūs varat lietot jaukteni. Jūs varat piešķirt tam dažas sākuma vērtības.

```raku
%capitals = France => 'Paris', Italy => 'Rome';
```

Jūs varat arī izdarīt abas lietas uzreiz. Tas darbojas arī ar citiem datu tipiem:

```raku
my %capitals = France => 'Paris', Italy => 'Rome';
```

## Elementu iegūšana

Lai iegūtu elementu, jūs indeksējat jaukteni. To dara tāpat kā ar [pāriem](../pairs). Ielieciet virkni leņķa iekavās vai figūriekavās:

```raku
say %capitals<France>;
say %capitals{'Italy'};
```

Jaukteņi ir maināmi. Tas nozīmē, ka jūs varat tos mainīt. Jūs varat mainīt vērtības. Jūs varat arī pievienot jaunas:

```raku
%capitals<Germany> = 'Berlin';
```

## Atslēgas un vērtības

Raku valodā jaukteņiem ir divas iebūvētas metodes: `keys` un `values`. Metode `keys` atgriež atslēgu sarakstu. Metode `values` atgriež vērtību sarakstu:

```raku
say %capitals.keys;
say %capitals.values;
```

Programma var izdrukāt, piemēram, šo:

    (Germany Italy France)
    (Berlin Rome Paris)

Ievērojiet, ka jaukteņa elementiem nav secības. Bet abas metodes lieto vienu un to pašu secību.

{% include nav.html %}
