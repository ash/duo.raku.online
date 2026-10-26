---
title: Multobla dissendo
translations_gpt:
---

{% include menu.html %}

En la parto Esencaĵoj, vi renkontis [_multi-funkciojn_](/eo/essentials/more-on-functions/multi-functions). Ili estas pluraj subrutinoj kun la sama nomo. Raku elektas la ĝustan, rigardante la tipojn de la argumentoj. Tio nomiĝas _multobla sendo_.

Ĝis nun, Raku elektis laŭ la _tipo_ de la argumentoj. Frazo `where` permesas iri plu kaj elekti ankaŭ laŭ la _valoro_. Vi skribas ĝin post parametro, kaj ĝi enhavas kondiĉon. La argumento devas plenumi ĉi tiun kondiĉon, alie tiu kandidato ne estas elektita:

```raku
multi sub info(Int $n where $n < 0)  { say "$n is negative" }
multi sub info(Int $n where $n == 0) { say "$n is zero" }
multi sub info(Int $n where $n > 0)  { say "$n is positive" }

info(-5);
info(0);
info(7);
```

Ĉiu voko rulas la kandidaton, kies kondiĉo estas vera por la donita valoro:

```
-5 is negative
0 is zero
7 is positive
```

Se vi rigardas nur la tipojn, ĉiuj tri kandidatoj havas la saman signaturon: unu `Int`. Do sen la `where`-frazoj, ili kolizius. La kondiĉoj faras ilin malsamaj unu de la alia.

## Baza kazo por rekursio

`where` estas ofte uzata por la halta punkto de rekursio. Ĉi tiu punkto ricevas sian propran kandidaton. Jen denove la faktorialo, nun kiel du multi-subrutinoj:

```raku
multi sub fact(Int $n where $n <= 1) { 1 }
multi sub fact(Int $n)               { $n * fact($n - 1) }

say fact(5); # 120
```

La unua kandidato traktas la bazan kazon, kiam `$n` estas `1` aŭ malpli. Ĝi simple redonas `1`. Ĉiu alia valoro iras al la dua kandidato. Ĝi vokas `fact` denove kun pli malgranda nombro. Ne estas `if` ene de la funkcio. La sendilo elektas inter la baza kazo kaj la rekursia paŝo.

{% include nav.html %}
