---
title: Vērtības piešķiršana
---

{% include menu.html %}

Operators `=` ieliek jaunu vērtību skalārajā konteinerā.

```raku
my $name;
$name = 'Anna';
```

Tagad jūs varat izmantot mainīgo. Piemēram, jūs varat to izdrukāt:

```raku
say $name;
```

## Divi vai vairāki mainīgie uzreiz

Jūs varat piešķirt vērtības vairākiem mainīgajiem uzreiz. Piemēram, šeit viens paziņojums piešķir vērtības diviem skalāriem:

```raku
my ($a, $b);
($a, $b) = 10, 20;
```

Kreisajā pusē jums ir jāraksta iekavas. Jūs nevarat tās izlaist. Labajā pusē jūs arī varat tās pievienot. Tad abas puses izskatās vienādi:

```raku
($a, $b) = (10, 20);
```

{% include nav.html %}
