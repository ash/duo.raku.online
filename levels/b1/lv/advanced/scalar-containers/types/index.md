---
title: Datu tipi un skalārie konteineri
---

{% include menu.html %}

Šeit ir programma, kas izmanto vienu mainīgo dažādiem datu veidiem. Mēs izmantojam `dd`, lai redzētu, kas ir konteinerā katrā solī. Šis piemērs tikai parāda ideju. Mēs neiesakām šādu programmēšanas stilu.

```raku
my $value;
dd $value;

$value = 42;
dd $value;

$value = 'forty-two';
dd $value;
```

Katrs `dd` izsaukums parāda, kas tajā brīdī ir mainīgajā `$value`:

```
$value = Any
$value = 42
$value = "forty-two"
```

Sākumā mainīgais ir tukšs, un `dd` parāda tā vērtību kā `Any`. Tā ir nedefinētā bāzes vērtība, ar ko sākas katrs netipizēts konteineris. Pēc piešķiršanām `dd` parāda veselo skaitli un pēc tam virkni.

Ievērojiet, ka `dd` šeit neizdrukā tipu pirms nosaukuma. Netipizēts konteineris nav piesaistīts nevienam tipam, tāpēc tiek parādīta tikai vērtība. Nākamā tēma parāda, ka [konteineris ar deklarētu tipu](/lv/advanced/scalar-containers/type-constraints) uzvedas citādi.

{% include nav.html %}
