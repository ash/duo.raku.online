---
title: Cave spatium
---

{% include menu.html %}

Functiones in Raku plerumque faciles sunt. Fere numquam difficultates afferunt. Sed unam rem cave.

## TL;DR

Nullum spatium inter nomen functionis et parentheses scribe. Parentheses argumenta continent. Sed post `for` et `if` spatium pone.

## Longa fabula

Ecce functio simplex:

```raku
sub f($x, $y) {
    return $x + $y;
}
```

Primum, specta nomen functionis. Parenthesis aperiens statim post id venit, sine spatio. Parametri in his parenthesibus sunt. Quidam styli codicis in aliis linguis ibi spatium requirunt. Raku id quoque accipit. Sed hic non est bonus modus codicem scribendi:

```raku
sub f ($x, $y) {
    return $x + $y;
}
```

In vocatione functionis absentia spatii magni momenti est. Interdum functionem sine parenthesibus vocas. Tum post nomen functionis spatium ponere debes:

```raku
f 5, 6;
```

Sed cum parenthesibus nullum spatium ante eas esse debet. Haec vocatio recta est:

```raku
f(5, 6);
```

Et haec vocatio est falsa:

```raku
f (5, 6);
```

Hic codex exceptionem facit:

    Too few positionals passed; expected 2 arguments but got 1
      sub f at t.raku line 1
      in block <unit> at t.raku line 5

Specta vocationem cum spatio: `f (5, 6)`. Raku putat te unum argumentum functioni transmittere. Hoc argumentum est `(5, 6)`. Typum huius argumenti facile probare potes. Muta functionem. Ea solum unum argumentum accipere debet:

```raku
sub f($param) {
    say $param.WHAT;
}

f (5, 6); # (List)
```

Itaque vocatio `f (5, 6)` [indicem](/la/essentials/positionals/lists) functioni transmittit. Totus index est unum argumentum.

## Quando spatium requiris

Interdum spatium requiris. Hoc fit cum parentheses post verbum clavis adhibes. Exempli gratia, verbum clavis potest esse `if`, `for` vel `loop`. Hic codex falsus est:

```raku
if(True != False) {
    say 'OK';
}
```

Nuntius erroris tibi dicit quid falsum sit:

    ===SORRY!===
    The word 'if' is interpreted as a 'if()' function call.  Please use
    whitespace instead of parentheses.
    at /Users/ash/raku-course/t.raku:1
    ------> if⏏(True != False) {
    Unexpected block in infix position (two terms in a row)
    at /Users/ash/raku-course/t.raku:1
    ------> if(True != False)⏏ {

Cum `if` parentheses omnino non requiris. Sine eis hoc problema fieri non potest. Sed interdum parentheses requiris, exempli gratia cum `loop`. Tum spatium ponere debes:

```raku
loop(my $c = 0; $c != 10; $c++) { say $c }
```

Idem in hoc codice fit. Compilator putat `loop(...)` vocationem functionis esse. Adde spatium ut problema solvas. Aut, melius, hunc codicem cum `for` scribe.

## Conclusio

Itaque, haec est res praecipua. Noli spatium inter nomen functionis et parentheses eius ponere. Tum talia problemata vitas. Etiam conare parentheses aliis locis non adhibere, si potes. Exempli gratia, eas cum `if` et `for` non requiris.

{% include nav.html %}
