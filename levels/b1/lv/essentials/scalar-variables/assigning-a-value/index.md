---
title: Vērtības piešķiršana
---

{% include menu.html %}

Lai ieliktu jaunu vērtību skalārajā konteinerā, izmantojiet operatoru `=`.

```raku
my $name;
$name = 'Anna';
```

Tagad jūs varat izmantot mainīgo, piemēram, lai to izdrukātu:

```raku
say $name;
```

## Vairāki mainīgie uzreiz

Jūs varat piešķirt vērtības vairākiem mainīgajiem vienlaikus. Piemēram, šādi jūs piešķirat vērtības diviem skalāriem vienā paziņojumā:

```raku
my ($a, $b);
($a, $b) = 10, 20;
```

Ņemiet vērā, ka kreisajā pusē jūs nevarat izlaist iekavas. Bet jūs varat tās pievienot arī labajā pusē, lai abas puses būtu vienādas:

```raku
($a, $b) = (10, 20);
```

{% include nav.html %}
