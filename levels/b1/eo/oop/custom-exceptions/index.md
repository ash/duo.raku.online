---
title: Propraj esceptoj
translations_gpt:
---

{% include menu.html %}

Raku havas enkonstruitajn esceptojn `X::`, sed vi ankaŭ povas krei viajn proprajn. Propra escepto estas klaso, kiu heredas de la enkonstruita klaso `Exception`. Ĝi ankaŭ havas metodon `message`:

```raku
class TooBig is Exception {
    has $.value;

    method message {
        "Value $.value is too big";
    }
}
```

`TooBig` estas normala klaso, do ĝi povas havi atributojn kiel `value`. Sed ĉar ĝi `is Exception`, vi povas ĵeti ĝin. Por ĵeti ĝin, vi kreas objekton kaj vokas `.throw` sur ĝi:

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

Ene de la `CATCH`, `when TooBig` kongruas, ĉar la ĵetita objekto havas tiun tipon. Propra escepto portas ĉiujn datumojn, kiujn vi donas al ĝi, ĉi tie la `value`. Do la traktilo povas konstrui precizan mesaĝon aŭ reagi en speciala maniero. Tio estas multe pli utila ol simpla ĉeno donita al `die`.

Ĉi tiu paĝo kunigas ĉion el ĉi tiu parto. Propra escepto estas _klaso_ kun atributoj kaj metodo. Ĝi ankaŭ partoprenas en la escepta sistemo de Raku. Do ĝi estas preta raporti ĝuste, kio misiris.

{% include nav.html %}
