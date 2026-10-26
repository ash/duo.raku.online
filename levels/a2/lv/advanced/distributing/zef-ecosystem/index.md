---
title: zef un ekosistēma
translations_gpt:
---

{% include menu.html %}

`zef` instalē Raku moduļus. Jūs to jau izmantojāt, lai instalētu moduļus pēc nosaukuma. Tas darbojas arī ar distribūciju vietējā direktorijā. Ieejiet distribūcijas direktorijā. No turienes jūs varat to tieši testēt un instalēt:

```
zef test .
zef install .
```

`zef test .` izpilda failus zem `t/`. `zef install .` instalē distribūciju jūsu Raku vidē. Tad citas programmas var to ielādēt ar `use`. Jūs varat instalēt arī pēc nosaukuma, piemēram, `zef install Cro`. Tas dara to pašu. Bet vispirms tas lejupielādē distribūciju no ekosistēmas.

Varbūt jūs gribat **publicēt** savu distribūciju. Tad citi cilvēki var to instalēt pēc nosaukuma. Lai to izdarītu, jūs to augšupielādējat ekosistēmā. Cilvēki tam parasti izmanto `fez`:

```
fez upload
```

Tas iepako pašreizējo distribūciju un nosūta to uz Raku ekosistēmu. Pēc tam `zef install Maths::Simple` darbojas ikvienam.

> Šīm komandām vajadzīgs instalēts `zef`/`fez` un tīkls. Augšupielādei vajadzīgs arī ekosistēmas konts.

Tātad kopīgots modulis iziet trīs soļus. Vispirms jūs dodat tam standarta izkārtojumu un `META6.json`. Tālāk jūs to testējat ar `zef test`. Tad jūs to publicējat ar `fez upload`. Pēc tam tas ir tikai vēl viens nosaukums. Ikviens var to instalēt ar `zef install`.

{% include nav.html %}
