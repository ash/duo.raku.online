---
title: Quiz — Ternarius operator
---

{% include menu.html %}

Fill in the gaps in the program:

{:.quiz-code}
. | my $color = prompt 'Quae color est?';
?? | dic $color aequum est 'caeruleum' ␣␣
!! | &nbsp;&nbsp;&nbsp;&nbsp;'Hoc est caelum!' ␣␣ 
. | &nbsp;&nbsp;&nbsp;&nbsp;'Plura indicia mihi opus sunt.';

{% include quiz.html %}

## Comment

In Raku homines saepe unum errorem cum operatore ternario faciunt. Est error communissimus. Compilator Rakudo nuntium erroris specialem pro eo habet.

    ===SORRY!=== Error while compiling /Users/ash/raku-course/t.raku
    Unsupported use of ?  and : for the ternary conditional operator.  In
    Raku please use: ??  and !!.
    at /Users/ash/raku-course/t.raku:2
    ------> dic $color aequum est 'caeruleum' ?⏏ 'Hoc est caelum!' : 'Plura indicia mihi opus sunt

{% include nav.html %}
