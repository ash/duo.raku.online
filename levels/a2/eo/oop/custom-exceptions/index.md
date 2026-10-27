---
title: Propraj esceptoj
translations_gpt:
---

{% include menu.html %}

Raku havas enkonstruitajn esceptojn. Iliaj nomoj komenciĝas per `X::`. Vi ankaŭ povas fari viajn proprajn esceptojn. Ni nomas ilin propraj esceptoj. Propra escepto estas klaso. Ĝi heredas de la enkonstruita klaso `Exception`. Do ĝi estas speco de `Exception`. Ĝi ankaŭ havas metodon `message`:

```raku
class TooBig is Exception {
    has $.value;

    method message {
        "Value $.value is too big";
    }
}
```

`TooBig` estas normala klaso. Ĝi povas havi atributojn, kiel `value`. Sed ĝi `is Exception`. Do vi povas ĵeti ĝin, kiel eraron de `die`. Por ĵeti ĝin, faru objekton de la klaso. Poste voku `.throw` sur ĉi tiu objekto:

```raku
my $value = 20 * 30;

TooBig.new(value => $value).throw if $value > 50;

CATCH {
    when TooBig {
        say .message;
    }
}
```

La programo presas:

```
Value 600 is too big
```

Ene de la `CATCH`, `when TooBig` kongruas. Tio okazas, ĉar la ĵetita objekto havas la tipon `TooBig`. Propra escepto tenas ĉiujn datumojn, kiujn vi donas al ĝi. Ĉi tie, tiuj datumoj estas la `value`. La kodo, kiu traktas la escepton, estas la traktilo. La traktilo povas uzi ĉi tiujn datumojn. Ĝi povas konstrui precizan mesaĝon. Aŭ ĝi povas reagi en speciala maniero. Tio estas multe pli utila ol simpla ĉeno por `die`.

Ĉi tie kuniĝas ĉio el ĉi tiu parto de la kurso. Propra escepto estas _klaso_. Ĝi havas atributojn kaj metodon. Ĝi ankaŭ funkcias kun la esceptaj iloj de Raku. Vi povas ĵeti ĝin kaj kapti ĝin. Do ĝi povas diri ĝuste, kio misiris.

{% include nav.html %}
