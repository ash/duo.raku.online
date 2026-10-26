---
title: Moduļu instalēšana no tīmekļa
translations_gpt:
---

{% include menu.html %}

Jūs varat rakstīt savus moduļus. Bet Raku kopiena arī publicē daudz moduļu. Ir moduļi daudzām lietām, no tīmekļa ietvariem līdz datu formātiem. Jūs varat tos instalēt un izmantot savās programmās.

## Instalēšana ar `zef`

Jūs instalējat moduļus ar `zef`. `zef` ir standarta moduļu pārvaldnieks. Tas nāk kopā ar Rakudo. Lai instalētu moduli, dodiet `zef` moduļa nosaukumu:

```console
$ zef install JSON::Fast
```

`zef` lejupielādē moduli. Tas lejupielādē arī visu, kas modulim vajadzīgs. Tālāk tas izpilda moduļa testus. Tad tas instalē moduli. Pēc tam modulis automātiski ir meklēšanas ceļā. Tāpēc programma var to ielādēt vienkārši ar `use`. Jums nav vajadzīga opcija `-I`:

```raku
use JSON::Fast;
```

Jūs varat arī meklēt ekosistēmā. Ekosistēma ir visi moduļi, ko cilvēki publicē. Un jūs varat atjaunināt vai noņemt moduļus:

```console
$ zef search Test
$ zef uninstall JSON::Fast
```

## No kurienes nāk moduļi

Publicētie moduļi ir Raku _ekosistēmā_. Jūs varat to apskatīt tīmekļa vietnē [raku.land](https://raku.land). Vietne parāda pieejamās distribūcijas. Distribūcijā ir viens vai vairāki moduļi. Vietne parāda arī to dokumentāciju.

## `META6.json`

Distribūcijai kopīgošanai ir fails ar aprakstu. Fails saucas `META6.json`. Tajā ir distribūcijas nosaukums un versija. Tas uzskaita distribūcijas moduļus. Tas uzskaita arī citas vajadzīgās distribūcijas. `zef` nolasa šo failu. Tāpēc tas zina, ko instalēt. Tas zina arī, kā daļas sader kopā. Varbūt jūs gribat publicēt savu moduli. Tad dodiet tam pareizu `META6.json`. Ar šo failu visi pārējie var instalēt jūsu moduli.

{% include nav.html %}
