---
title: Kruca, hiper kaj neita
translations_gpt:
---

{% include menu.html %}

Raku havas pli da meta-operatoroj, ne nur redukton kaj zipadon. Ĉi tie vi lernas tri el ili.

## Kruca — `X`

La kruca meta-operatoro `X` prenas du listojn kaj faras parojn. Ĉi tie, **ĉiu** elemento de unu listo iras kun **ĉiu** elemento de la alia. Oni nomas tion la kartezia produkto:

```raku
say <a b> X <1 2>; # ((a 1) (a 2) (b 1) (b 2))
```

Kiel zipado, `X` ankaŭ povas preni operatoron. Tiam la operatoro laboras kun ĉiu paro. `X~` kunigas ĉiun paron en ĉenon. `X*` multobligas la du nombrojn:

```raku
say <a b> X~ <1 2>;         # (a1 a2 b1 b2)
say (1, 2, 3) X* (10, 100); # (10 100 20 200 30 300)
```

Zipado iras tra du listoj flanko ĉe flanko. Krucado kunmetas ilin en ĉiuj eblaj manieroj.

## Hipera — `»…«`

Hipera meta-operatoro uzas operatoron por **ĉiu elemento** de listo. La operatoro staras inter la sagoj `»…«`. Kun nur askiaj signoj, vi skribas `>>…<<`. Kun du listoj, ĝi laboras elemento post elemento, kiel zipado. Foje unu flanko havas nur unu valoron. Tiam ĝi uzas ĉi tiun valoron kun ĉiu elemento de la listo:

```raku
say (1, 2, 3) »+» (10, 20, 30); # (11 22 33)
say (1, 2, 3) »*» 2;            # (2 4 6)
```

La du sagoj povas montri al malsamaj direktoj. La direkto gravas, kiam la listoj havas malsamajn longojn. Se sago montras **al** listo, Raku povas ripeti ĉi tiun liston. Tiam ĝi estas same longa kiel la alia listo. Jen la kvar kombinoj en askia skribo, kun `<<` kaj `>>`:

* `>>op<<` — Raku ripetas neniun liston. La listoj devas havi la saman longon. Se ne, vi ricevas eraron.
* `>>op>>` — Raku ripetas la **dekstran** liston. Tiam ĝi estas same longa kiel la maldekstra.
* `<<op<<` — Raku ripetas la **maldekstran** liston. Tiam ĝi estas same longa kiel la dekstra.
* `<<op>>` — Raku ripetas la **pli mallongan** liston. Tiam ĝi estas same longa kiel la pli longa.

```raku
say (1, 2, 3, 4) <<+>> (10, 20); # (11 22 13 24)  — 10, 20 repeats to 10, 20, 10, 20
```

Ekzistas ankaŭ formo kun nur unu operando. Ĝi vokas metodon sur ĉiu elemento. `>>.uc` ŝanĝas ĉiun ĉenon al grandaj literoj:

```raku
say <raku perl>>>.uc; # (RAKU PERL)
```

Hipera operacio ankaŭ diras ion pli al Raku. Raku *povas* fari la laboron paralele. Tiam pluraj partoj de la laboro ruliĝas samtempe. Poste vi lernos la similan metodon `.hyper`. Ĝi estas en [la sekcio pri samtempa programado](/eo/paradigms/hyper-race).

## Neiga — `!`

Metu `!` antaŭ komparan operatoron. Tiam vi ricevas la malan rezulton. Vi jam konas `!=`, aŭ «ne egala». Ĝi estas simple ĉi tiu meta-operatoro kun `==`. Ankaŭ aliaj operatoroj donas `True` aŭ `False`, kiel `eq` kaj `%%`. La meta-operatoro laboras kun ili same:

```raku
say 3 != 4;      # True
say 'a' !eq 'b'; # True  — ne-egalaj kiel ĉenoj
say 5 !%% 2;     # True  — 5 ne estas dividebla per 2
```

Do `$a !op $b` estas nur pli pura maniero skribi `!($a op $b)`.

Raku faras tion intence. Kelkaj lingvoj estas intence malgrandaj kaj simplaj, kiel Esperanto. Esperanto celas havi unu regulan manieron diri ĉiun aferon. Raku estas malsama. Ĝi volonte donas al vi plurajn manierojn. Do Raku havas la neigan `!eq`. Ĝi ankaŭ havas specialan operatoron `ne`. La du signifas ĝuste la samon:

```raku
say 'a' ne 'b'; # True — la sama testo kiel 'a' !eq 'b'
```

{% include nav.html %}
