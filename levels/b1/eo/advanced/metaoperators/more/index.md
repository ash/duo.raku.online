---
title: Kruca, hiper kaj neita
translations_gpt:
---

{% include menu.html %}

Krom redukto kaj zipado, Raku havas plurajn aliajn meta-operatorojn. Nun estas utile koni tri el ili.

## Kruca — `X`

La kruca meta-operatoro `X` prenas du listojn. Ĝi parigas **ĉiun** elementon de unu kun **ĉiu** elemento de la alia. Oni nomas tion la kartezia produkto:

```raku
say <a b> X <1 2>; # ((a 1) (a 2) (b 1) (b 2))
```

Kiel zipado, ĝi povas ĉirkaŭi operatoron, kiu tiam laboras kun ĉiu paro. `X~` kunigas ĉiun paron en ĉenon, kaj `X*` multobligas la valorojn:

```raku
say <a b> X~ <1 2>;         # (a1 a2 b1 b2)
say (1, 2, 3) X* (10, 100); # (10 100 20 200 30 300)
```

Zipado iras tra du listoj flanko ĉe flanko, dum krucado kombinas ilin en ĉiuj eblaj manieroj.

## Hipera — `»…«`

Hipera meta-operatoro aplikas operatoron al **ĉiu elemento** de listo. La operatoro iras en la pintajn krampojn `»…«`, aŭ en la askian formon `>>…<<`. Kun du listoj, ĝi laboras elemento post elemento, kiel zipado. Kun unu sola valoro ĉe unu flanko, ĝi etendas tiun valoron tra la tuta listo:

```raku
say (1, 2, 3) »+» (10, 20, 30); # (11 22 33)
say (1, 2, 3) »*» 2;            # (2 4 6)
```

La du sagoj ne devas montri al la sama direkto. Ilia direkto decidas, kio okazas, kiam la listoj havas malsamajn longojn. Se sago montras **al** listo, tiu listo povas ripetiĝi por egali la alian. Jen la kvar kombinoj, skribitaj askie per `<<` kaj `>>`:

* `>>op<<` — neniu listo ripetiĝas, do la listoj devas jam havi la saman longon, alie estas eraro;
* `>>op>>` — la **dekstra** listo ripetiĝas por egali la maldekstran;
* `<<op<<` — la **maldekstra** listo ripetiĝas por egali la dekstran;
* `<<op>>` — la **pli mallonga** listo ripetiĝas por egali la pli longan.

```raku
say (1, 2, 3, 4) <<+>> (10, 20); # (11 22 13 24)  — 10, 20 repeats to 10, 20, 10, 20
```

Ekzistas ankaŭ unuargumenta formo, kun nur unu operando. Ĝi vokas metodon sur ĉiu elemento. `>>.uc` ŝanĝas ĉiun ĉenon al majuskloj:

```raku
say <raku perl>>>.uc; # (RAKU PERL)
```

Hiperaj operacioj ankaŭ montras, ke la laboro *povas* esti farata paralele. Vi vidos la rilatan metodon `.hyper` poste, en [la sekcio pri samtempa programado](/eo/paradigms/hyper-race).

## Neiga — `!`

Se vi metas `!` antaŭ komparan operatoron, vi ricevas la malan rezulton. La konata `!=` (ne-egala) estas ĝuste ĉi tiu meta-operatoro uzata kun `==`. La samo funkcias por aliaj buleaj operatoroj, kiel `eq` kaj `%%`:

```raku
say 3 != 4;      # True
say 'a' !eq 'b'; # True  — ne-egalaj kiel ĉenoj
say 5 !%% 2;     # True  — 5 ne estas dividebla per 2
```

Resume, `$a !op $b` estas nur pli neta maniero skribi `!($a op $b)`.

Tio estas intenca. Kelkaj lingvoj, kiel Esperanto, estas intence malgrandaj kaj simplaj. Ili celas havi unu regulan manieron diri ĉiun aferon. Raku estas malsama kaj volonte donas al vi plurajn manierojn. Do la neiga `!eq` ekzistas tuj apud la speciala operatoro `ne`. La du signifas ĝuste la samon:

```raku
say 'a' ne 'b'; # True — la sama testo kiel 'a' !eq 'b'
```

{% include nav.html %}
