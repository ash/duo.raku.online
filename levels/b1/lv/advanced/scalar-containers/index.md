---
title: Skalārie konteineri
---

{% include menu.html %}

Kā norāda nosaukums, skalārie konteineri glabā atsevišķas jeb skalāras vērtības. Šiem konteineriem ir sigils `$`.

Šeit ir ļoti vienkāršs un tiešs veids, kā lietot skalāru:

```raku
my $lang = 'Raku';
```

Mainīgais `$lang` ir skalārs konteineris.

Pēc noklusējuma skalārie konteineri neierobežo savu datu tipu. Tāpēc jūs varat glabāt tajos jebkura tipa vērtību. Šeit ir vienkāršākais veids, kā to parādīt. Jūs varat izmantot vienu un to pašu mainīgo veselam skaitlim un pēc tam virknei:

```raku
my $value = 42;
$value = 'forty-two';
```

Autors neaicina jūs rakstīt programmas šādā veidā.

Iekšēji tas nozīmē šo. Pēc noklusējuma jauns konteineris var glabāt `Any` tipa vērtības. `Any` ir bāzes tips lielākajai daļai citu tipu, piemēram, `Int` vai `Str`.

{% include nav.html %}
