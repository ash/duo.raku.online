---
title: Atentu la spacon
---

{% include menu.html %}

En Raku, uzi funkciojn estas plejparte facile kaj ne kaŭzas problemojn. Sed ni devas averti vin pri unu afero.

## TL;DR

Ne metu spacon inter la nomo de la funkcio kaj la parentezoj kun ĝiaj argumentoj. Sed ja uzu spacon post `for` kaj `if`.

## Longa rakonto

Prenu simplan funkcion:

```raku
sub f($x, $y) {
    return $x + $y;
}
```

Unue, rimarku, ke ne estas spaco post la nomo de la funkcio. La malferma parentezo kun la parametroj venas tuj post la nomo. Iuj kodstiloj en aliaj lingvoj eble postulas spacon tie. Raku akceptas ĝin, sed tio ne estas bona kutimo por sekvi:

```raku
sub f ($x, $y) {
    return $x + $y;
}
```

Kiam vi vokas la funkcion, la manko de spaco estas grava. Se vi vokas la funkcion sen parentezoj, vi devas havi spacon post ĝia nomo:

```raku
f 5, 6;
```

Sed se vi uzas parentezojn, ne povas esti spaco antaŭ ili. Ĉi tiu voko estas ĝusta:

```raku
f(5, 6);
```

Kaj ĉi tiu voko estas malĝusta:

```raku
f (5, 6);
```

Tia kodo kaŭzas escepton:

    Tro malmultaj poziciaj pasis; atendis 2 argumentojn sed ricevis 1
      sub f ĉe t.raku linio 1
      en bloko <unit> ĉe t.raku linio 5

Raku vidas la vokon kun spaco, `f (5, 6)`, alimaniere. Ĝi pensas, ke vi volas pasi unu solan argumenton, `(5, 6)`, al la funkcio. Estas facile kontroli la tipon de ĉi tiu argumento. Simple ŝanĝu la funkcion, por ke ĝi prenu nur unu argumenton:

```raku
sub f($param) {
    say $param.WHAT;
}

f (5, 6); # (List)
```

Do, kiam vi vokas `f (5, 6)`, vi pasas [liston](/eo/essentials/positionals/lists) al la funkcio. La listo estas pasata kiel unu sola ero.

## Kiam spaco estas bezonata

En iuj kazoj, vi ja bezonas spacon. Tio okazas, kiam vi uzas parentezojn kun ŝlosilvorto kiel `if`, `for` aŭ `loop`. La sekva kodo estas malĝusta:

```raku
if(True != False) {
    say 'OK';
}
```

La erarmesaĝo klarigas la problemon:

    ===PARDONU!===
    La vorto 'if' estas interpretita kiel 'if()' funkciovoko. Bonvolu uzi
    blankspacon anstataŭ parentezoj.
    ĉe /Users/ash/raku-course/t.raku:1
    ------> if⏏(True != False) {
    Neatendita bloko en infiksa pozicio (du terminoj en vico)
    ĉe /Users/ash/raku-course/t.raku:1
    ------> if(True != False)⏏ {

Kun `if`, vi tute ne bezonas parentezojn. Do se vi ne uzas ilin, la problemo ne povas aperi. Sed en iuj kazoj vi bezonas ilin, ekzemple, kun `loop`. Tiam la spaco estas deviga:

```raku
loop(my $c = 0; $c != 10; $c++) { say $c }
```

La sama afero okazas en ĉi tiu kodo: la kompililo komprenas `loop(...)` kiel funkcian vokon. Aldonu spacon por solvi la problemon. Aŭ, eĉ pli bone, reskribu ĉi tiun parton de la kodo per `for`.

## Konkludo

Mallonge, por eviti tiajn problemojn, sekvu du regulojn. Ne metu spacon inter la nomo de la funkcio kaj la parentezoj kun ĝiaj argumentoj. Ankaŭ provu eviti parentezojn en aliaj partoj de la lingvo, kiel la kontrolfluo.

{% include nav.html %}
