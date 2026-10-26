---
title: Importēšana
translations_gpt:
---

{% include menu.html %}

Moduli programmā var ienest vairāk nekā vienā veidā. Trīs teikumi `use`, `need` un `require` atšķiras ar to, _kad_ tie ielādē moduli. Tie atšķiras arī ar to, _ko_ tie padara pieejamu.

## `use`

Jūs jau esat redzējuši `use`. Tas ielādē moduli kompilēšanas laikā un importē tā eksportētos nosaukumus. Tāpēc jūs varat tos izsaukt tieši:

```raku
use Greeting;
say hello('Anna'); # Hello, Anna!
```

## `need`

Arī `need` ielādē moduli kompilēšanas laikā. Taču tas _neimportē_ eksportētos nosaukumus. Tā `our` mainīgos jūs joprojām sasniedzat caur moduļa nosaukumu:

```raku
need Greeting;
say $Greeting::version; # 1.0
```

Pēc `need Greeting` Raku neatpazītu vienkāršu `hello(...)`, jo nekas netika importēts. Pieejami ir tikai kvalificētie nosaukumi, piemēram, `$Greeting::version`.

## `require`

`require` ielādē moduli _izpildes laikā_, nevis kompilēšanas laikā. Tas noder, kad tikai izpildes laikā uzzināt, vai jums vajag moduli. Piemēram, tā nosaukums var nākt no lietotāja ievades.

Tā kā modulis tiek ielādēts izpildes laikā, nekas netiek importēts automātiski. Lai importētu simbolus, uzskaitiet tos leņķa iekavās aiz moduļa nosaukuma. Tad jūs varat tos izsaukt tieši:

```raku
require Greeting <&hello>;
say hello('Anna'); # Hello, Anna!
```

Ikdienas kodā jums vajag `use`. `need` un `require` ir paredzēti retākiem gadījumiem.

{% include nav.html %}
