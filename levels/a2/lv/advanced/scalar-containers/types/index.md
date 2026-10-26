---
title: Datu tipi un skalārie konteineri
---

{% include menu.html %}

Aplūkosim programmu. Tā izmanto vienu un to pašu mainīgo dažādiem datu veidiem. Mēs izmantojam `dd`, lai redzētu datus katrā solī. Šis piemērs tikai parāda, kā lietas darbojas. Tas nav labs veids, kā rakstīt programmas.

```raku
my $value;
dd $value;

$value = 42;
dd $value;

$value = 'forty-two';
dd $value;
```

Katrs `dd` izsaukums parāda `$value` pašreizējo vērtību:

```
$value = Any
$value = 42
$value = "forty-two"
```

Sākumā mainīgais ir tukšs. `dd` parāda tā vērtību kā `Any`. Tā ir nedefinētā bāzes vērtība. Katrs konteineris bez tipa sākas ar to. Pēc piešķiršanām `dd` parāda veselo skaitli. Tad tā parāda virkni.

Ievērojiet, ka `dd` šeit neizdrukā tipu pirms nosaukuma. Konteineram bez tipa nav noteikta tipa. Tāpēc `dd` parāda tikai vērtību. [Konteineris ar deklarētu tipu](/lv/advanced/scalar-containers/type-constraints) darbojas citādi. Jūs to redzēsiet nākamajā tēmā.

{% include nav.html %}
