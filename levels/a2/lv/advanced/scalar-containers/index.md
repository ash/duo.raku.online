---
title: Skalārie konteineri
---

{% include menu.html %}

Skalārie konteineri glabā atsevišķas jeb skalāras vērtības. To pasaka nosaukums. Šādiem konteineriem ir sigils `$`.

Šeit ir ļoti vienkāršs skalāra lietojums:

```raku
my $lang = 'Raku';
```

Mainīgais `$lang` ir skalārs konteineris.

Pēc noklusējuma skalārais konteineris neierobežo datu tipu. Tāpēc jūs varat glabāt tajā jebkura tipa vērtību. Šeit ir vienkāršākais piemērs. Vispirms mainīgais glabā veselu skaitli. Tad tas pats mainīgais glabā virkni:

```raku
my $value = 42;
$value = 'forty-two';
```

Autors neiesaka rakstīt kodu šādi.

Raku iekšienē tas nozīmē vienu lietu. Pēc noklusējuma jauns konteineris var glabāt `Any` tipa vērtības. `Any` ir bāzes tips lielākajai daļai citu tipu. Piemēram, `Int` un `Str` nāk no `Any`.

{% include nav.html %}
