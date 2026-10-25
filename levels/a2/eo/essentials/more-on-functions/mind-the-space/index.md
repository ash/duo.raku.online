---
title: Atentu la spacon
---

{% include menu.html %}

Funkcioj en Raku estas plejparte facile uzeblaj. Kutime ili ne kaŭzas problemojn. Sed estu atenta pri unu afero.

## TL;DR

Ne skribu spacon inter la nomo de la funkcio kaj la parentezoj. La parentezoj enhavas la argumentojn. Sed ja metu spacon post `for` kaj `if`.

## Longa rakonto

Jen simpla funkcio:

```raku
sub f($x, $y) {
    return $x + $y;
}
```

Unue, rigardu la nomon de la funkcio. La malferma parentezo venas tuj post ĝi, sen spaco. La parametroj estas en ĉi tiuj parentezoj. Iuj kodstiloj en aliaj lingvoj bezonas spacon tie. Raku ankaŭ akceptas ĝin. Sed tio ne estas bona maniero skribi kodon:

```raku
sub f ($x, $y) {
    return $x + $y;
}
```

En funkcia voko, la manko de spaco estas grava. Kelkfoje vi vokas funkcion sen parentezoj. Tiam vi devas meti spacon post la nomo de la funkcio:

```raku
f 5, 6;
```

Sed kun parentezoj, ne devas esti spaco antaŭ ili. Ĉi tiu voko estas ĝusta:

```raku
f(5, 6);
```

Kaj ĉi tiu voko estas malĝusta:

```raku
f (5, 6);
```

Ĉi tiu kodo kaŭzas escepton:

    Tro malmultaj poziciaj pasis; atendis 2 argumentojn sed ricevis 1
      sub f ĉe t.raku linio 1
      en bloko <unit> ĉe t.raku linio 5

Rigardu la vokon kun spaco: `f (5, 6)`. Raku pensas, ke vi pasas unu argumenton al la funkcio. Ĉi tiu argumento estas `(5, 6)`. Vi povas facile kontroli la tipon de ĉi tiu argumento. Ŝanĝu la funkcion. Ĝi devas preni nur unu argumenton:

```raku
sub f($param) {
    say $param.WHAT;
}

f (5, 6); # (List)
```

Do, la voko `f (5, 6)` pasas [liston](/eo/essentials/positionals/lists) al la funkcio. La tuta listo estas unu argumento.

## Kiam vi bezonas spacon

Kelkfoje vi bezonas spacon. Tio okazas, kiam vi uzas parentezojn post ŝlosilvorto. Ekzemple, la ŝlosilvorto povas esti `if`, `for` aŭ `loop`. Ĉi tiu kodo estas malĝusta:

```raku
if(True != False) {
    say 'OK';
}
```

La erarmesaĝo diras al vi, kio estas malĝusta:

    ===PARDONU!===
    La vorto 'if' estas interpretita kiel 'if()' funkciovoko. Bonvolu uzi
    blankspacon anstataŭ parentezoj.
    ĉe /Users/ash/raku-course/t.raku:1
    ------> if⏏(True != False) {
    Neatendita bloko en infiksa pozicio (du terminoj en vico)
    ĉe /Users/ash/raku-course/t.raku:1
    ------> if(True != False)⏏ {

Kun `if`, vi tute ne bezonas parentezojn. Sen ili, ĉi tiu problemo ne povas okazi. Sed kelkfoje vi bezonas parentezojn, ekzemple, kun `loop`. Tiam vi devas meti spacon:

```raku
loop(my $c = 0; $c != 10; $c++) { say $c }
```

La sama afero okazas en ĉi tiu kodo. La kompililo pensas, ke `loop(...)` estas funkcia voko. Aldonu spacon por ripari la problemon. Aŭ, pli bone, skribu ĉi tiun kodon per `for`.

## Konkludo

Do, jen la ĉefa punkto. Ne metu spacon inter la nomo de funkcio kaj ĝiaj parentezoj. Tiam vi evitas tiajn problemojn. Ankaŭ provu ne uzi parentezojn en aliaj lokoj, kiam vi povas. Ekzemple, vi ne bezonas ilin kun `if` kaj `for`.

{% include nav.html %}
