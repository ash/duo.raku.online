---
title: zef un ekosistēma
translations_gpt:
---

{% include menu.html %}

`zef` ir Raku moduļu instalētājs. Jūs to jau esat izmantojuši, lai instalētu moduļus pēc nosaukuma. Tas darbojas arī ar vietēju distribūcijas direktoriju. Distribūcijas iekšpusē jūs varat to tieši notestēt un instalēt:

```
zef test .
zef install .
```

`zef test .` izpilda failus zem `t/`. `zef install .` instalē distribūciju jūsu Raku vidē, lai citas programmas varētu to ielādēt ar `use`. Instalēšana pēc nosaukuma, kā `zef install Cro`, dara to pašu. Bet vispirms tā lejupielādē distribūciju no ekosistēmas.

Jūs varat **publicēt** savu distribūciju, lai citi to varētu instalēt pēc nosaukuma. Lai to izdarītu, jūs to augšupielādējat ekosistēmā. Parastais rīks tam ir `fez`:

```
fez upload
```

Tas iepako pašreizējo distribūciju un nosūta to uz Raku ekosistēmu. Pēc tam `zef install Maths::Simple` darbosies ikvienam.

> Šīm komandām vajadzīgs instalēts `zef`/`fez` un tīkla savienojums. Augšupielādei vajadzīgs arī ekosistēmas konts.

Tātad kopīgota moduļa dzīvē ir trīs soļi. Jūs to izkārtojat ar `META6.json` un notestējat ar `zef test`. Tad jūs to publicējat ar `fez upload`. No tā brīža tas ir tikai vēl viens nosaukums, ko ikviens var `zef install`.

{% include nav.html %}
