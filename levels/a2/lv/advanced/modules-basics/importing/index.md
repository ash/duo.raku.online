---
title: Importēšana
translations_gpt:
---

{% include menu.html %}

Ir vairāki veidi, kā ienest moduli programmā. Raku tam ir trīs teikumi: `use`, `need` un `require`. Tie atšķiras divos veidos. Pirmais ir tas, _kad_ tie ielādē moduli. Otrais ir tas, _ko_ tie dod programmai.

## `use`

Jūs jau zināt `use`. Tas ielādē moduli kompilēšanas laikā, pirms programma darbojas. Tas arī importē moduļa eksportētos nosaukumus. Tāpēc jūs varat tos izsaukt tieši:

```raku
use Greeting;
say hello('Anna'); # Hello, Anna!
```

## `need`

Arī `need` ielādē moduli kompilēšanas laikā. Bet tas _neimportē_ eksportētos nosaukumus. Jūs joprojām varat piekļūt moduļa `our` mainīgajiem. Tam izmantojiet moduļa nosaukumu:

```raku
need Greeting;
say $Greeting::version; # 1.0
```

Pēc `need Greeting` vienkāršs `hello(...)` nedarbojas. Nekas nav importēts. Pieejami ir tikai pilnie nosaukumi ar moduļa nosaukumu. Piemērs ir `$Greeting::version`.

## `require`

`require` ielādē moduli _izpildes laikā_, nevis kompilēšanas laikā. Dažos gadījumos tas noder. Dažreiz jūs nezināt, vai jums vajag moduli. To jūs uzzināt tikai tad, kad programma darbojas. Piemēram, lietotājs var ievadīt moduļa nosaukumu.

Modulis ielādējas izpildes laikā. Tāpēc nekas netiek importēts automātiski. Aiz moduļa nosaukuma uzrakstiet vajadzīgos nosaukumus. Ielieciet tos leņķa iekavās. Tad tie tiek importēti. Tātad jūs varat tos izsaukt tieši:

```raku
require Greeting <&hello>;
say hello('Anna'); # Hello, Anna!
```

Parasti `use` ir pareizā izvēle. `need` un `require` ir retākiem gadījumiem.

{% include nav.html %}
