---
title: Multobla dissendo
translations_gpt:
---

{% include menu.html %}

En la parto Esencaĵoj, vi lernis pri [_multi-funkcioj_](/eo/essentials/more-on-functions/multi-functions). Ili estas pluraj subrutinoj kun la sama nomo. Raku rigardas la tipojn de la argumentoj. Poste ĝi elektas la ĝustan subrutinon. Tio nomiĝas _multobla sendo_.

Ĝis nun, Raku elektis laŭ la _tipo_ de la argumentoj. Per frazo `where`, vi povas fari pli. Raku povas elekti ankaŭ laŭ la _valoro_. Vi skribas `where` post parametro. Ĝi havas kondiĉon. Ĉiu varianto de la funkcio nomiĝas kandidato. Raku elektas kandidaton nur, kiam ĝia kondiĉo estas vera por la argumento:

```raku
multi sub info(Int $n where $n < 0)  { say "$n is negative" }
multi sub info(Int $n where $n == 0) { say "$n is zero" }
multi sub info(Int $n where $n > 0)  { say "$n is positive" }

info(-5);
info(0);
info(7);
```

Ĉiu voko iras al la kandidato kun vera kondiĉo por tiu valoro:

```
-5 is negative
0 is zero
7 is positive
```

Rigardu la tipojn. Ĉiuj tri kandidatoj havas la saman signaturon: unu `Int`. Sen la `where`-frazoj, ili kolizias. Raku ne povas elekti inter ili. La kondiĉoj faras ilin malsamaj.

## Haltigi rekursion

Oni ofte uzas `where` kun rekursio. En rekursio, funkcio vokas sin mem. Ĝi devas halti iam. Vi povas meti ĉi tiun haltan punkton en apartan kandidaton. Jen denove la faktorialo. Nun ĝi havas du multi-subrutinojn:

```raku
multi sub fact(Int $n where $n <= 1) { 1 }
multi sub fact(Int $n)               { $n * fact($n - 1) }

say fact(5); # 120
```

La unua kandidato estas la baza kazo. Ĉi tie, la rekursio haltas. En ĉi tiu kazo, `$n` estas `1` aŭ malpli. Ĉi tiu kandidato simple redonas `1`. Ĉiuj aliaj valoroj iras al la dua kandidato. Ĝi vokas `fact` denove kun pli malgranda nombro. Ne estas `if` en la funkcio. La sendilo elektas inter la baza kazo kaj la rekursia paŝo. La sendilo estas la parto de Raku, kiu elektas kandidaton.

{% include nav.html %}
