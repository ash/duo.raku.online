---
title: Moduļu instalēšana no tīmekļa
translations_gpt:
---

{% include menu.html %}

Jūs varat izmantot ne tikai tos moduļus, kurus rakstāt pats. Raku kopiena ir publicējusi lielu moduļu kolekciju. Tie aptver visu, sākot no tīmekļa ietvariem līdz datu formātiem. Jūs varat tos instalēt un izmantot savās programmās.

## Instalētājs `zef`

Moduļus instalē ar `zef`, kas ir standarta moduļu pārvaldnieks. Tas nāk kopā ar Rakudo. Lai instalētu moduli, nododiet tā nosaukumu `zef`:

```console
$ zef install JSON::Fast
```

`zef` lejupielādē moduli kopā ar visu, no kā tas ir atkarīgs. Pēc tam tas izpilda moduļa testus un instalē to. Instalēts modulis automātiski atrodas meklēšanas ceļā. Tāpēc programma var to ielādēt ar vienkāršu `use`. Opcija `-I` nav vajadzīga:

```raku
use JSON::Fast;
```

`zef` var arī meklēt ekosistēmā. Tas var arī atjaunināt vai noņemt moduļus:

```console
$ zef search Test
$ zef uninstall JSON::Fast
```

## No kurienes nāk moduļi

Publicētie moduļi ir daļa no Raku _ekosistēmas_. To var pārlūkot tīmekļa vietnē [raku.land](https://raku.land). Tā uzskaita pieejamās distribūcijas un to dokumentāciju.

## `META6.json`

Distribūcijai, kas paredzēta kopīgošanai, ir apraksta fails ar nosaukumu `META6.json`. Šajā failā ir ierakstīts distribūcijas nosaukums un versija. Tas arī uzskaita moduļus, ko distribūcija nodrošina, un citas distribūcijas, no kurām tā ir atkarīga. `zef` nolasa šo failu. No tā `zef` uzzina, ko instalēt un kā daļas sader kopā. Ja publicējat savu moduli, tam vajadzīgs pareizs `META6.json`. Tieši tas ļauj visiem pārējiem to instalēt.

{% include nav.html %}
