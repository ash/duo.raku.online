---
title: Quiz — Compatatio contra intervallum
---

{% include menu.html %}

Hic sunt aliquot comparationes contra intervallum. Tenta responsa recta invenire.

## 1

{:.quiz-select}
Verum | `10 ~~ 0..20` est&nbsp; (: Verum, Falsum :)
Verum | `10 ~~ ^20` est&nbsp; (: Verum, Falsum :)
Verum | `0 ~~ ^10` est&nbsp; (: Verum, Falsum :)
Falsum | `10 ~~ 10^..15` est&nbsp; (: Verum, Falsum :)
Verum | `11 ~~ 10..15` est&nbsp; (: Verum, Falsum :)
Verum | `14 ~~ 10^..15` est&nbsp; (: Verum, Falsum :)
Falsum | `15 ~~ 10^..^15` est&nbsp; (: Verum, Falsum :)

## 2

Haec pars paulo difficilior est. Quid fit, si intervallum cum alio intervallo comparas?

{:.quiz-select}
Verum | `2..3 ~~ 1..5 ` est&nbsp; (: Verum, Falsum :)
Falsum | `1..2 ~~ 5..6 ` est&nbsp; (: Verum, Falsum :)
Falsum | `1..5 ~~ 3..7 ` est&nbsp; (: Verum, Falsum :)

{% include quiz.html %}

{% include nav.html %}
