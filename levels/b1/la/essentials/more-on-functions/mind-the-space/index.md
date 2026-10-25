---
title: Cave spatium
---

{% include menu.html %}

In Raku usus functionum plerumque facilis est et nullas difficultates affert. Sed de una re te monere debemus.

## TL;DR

Nullum spatium pone inter nomen functionis et parentheses cum argumentis eius. Sed post `for` et `if` spatio utere.

## Longa fabula

Simplicem functionem accipiamus:

```raku
sub f($x, $y) {
    return $x + $y;
}
```

Primum, nota: post nomen functionis nullum spatium est. Parenthesis aperiens cum parametris statim post nomen venit. Quidam styli codicis in aliis linguis ibi spatium requirere possunt. Raku id accipit, sed hic non est bonus mos sequendus:

```raku
sub f ($x, $y) {
    return $x + $y;
}
```

Cum functionem vocas, absentia spatii magni momenti est. Si functionem sine parenthesibus vocas, spatium post nomen eius habere debes:

```raku
f 5, 6;
```

Sed si parenthesibus uteris, spatium ante eas esse non potest. Haec vocatio recta est:

```raku
f(5, 6);
```

Et haec vocatio est falsa:

```raku
f (5, 6);
```

Talis codex exceptionem causat:

    Too few positionals passed; expected 2 arguments but got 1
      sub f at t.raku line 1
      in block <unit> at t.raku line 5

Raku vocationem cum spatio, `f (5, 6)`, alio modo videt. Putat te unum argumentum, `(5, 6)`, functioni transmittere velle. Facile est typum huius argumenti probare. Solum muta functionem, ut unum tantum argumentum accipiat:

```raku
sub f($param) {
    say $param.WHAT;
}

f (5, 6); # (List)
```

Itaque, cum `f (5, 6)` vocas, [indicem](/la/essentials/positionals/lists) functioni transmittis. Index ut una res transmittitur.

## Quando spatium necessarium est

In aliquibus casibus spatium vere requiris. Hoc fit cum parentheses cum verbo clavis adhibes, ut `if`, `for` vel `loop`. Codex sequens falsus est:

```raku
if(True != False) {
    say 'OK';
}
```

Nuntius erroris problema explicat:

    ===SORRY!===
    The word 'if' is interpreted as a 'if()' function call.  Please use
    whitespace instead of parentheses.
    at /Users/ash/raku-course/t.raku:1
    ------> if⏏(True != False) {
    Unexpected block in infix position (two terms in a row)
    at /Users/ash/raku-course/t.raku:1
    ------> if(True != False)⏏ {

Cum `if` parentheses omnino non requiris. Itaque si eis non uteris, problema apparere non potest. Sed in aliquibus casibus eas requiris, exempli gratia cum `loop`. Tum spatium necessarium est:

```raku
loop(my $c = 0; $c != 10; $c++) { say $c }
```

Idem in hoc codice fit: compilator `loop(...)` ut vocationem functionis accipit. Adde spatium ut problema solvas. Aut, etiam melius, hanc partem codicis cum `for` rescribe.

## Conclusio

Breviter, ut talia problemata vites, duas regulas sequere. Noli spatium ponere inter nomen functionis et parentheses cum argumentis eius. Etiam conare parentheses vitare in aliis partibus linguae, ut in fluxu imperii.

{% include nav.html %}
