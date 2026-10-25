---
title: 'Quiz: `if`'
---

{% include menu.html %}

Haec programmata perfice.

## 1

Hoc programma aetatem probat. Suntne 21 anni aut plures?

{:.quiz-code}
. | my $age = 24;
>= { | si $age ␣␣ 21 ␣ | Both `>=` and `≥` can be used here.
. | &nbsp;&nbsp;&nbsp;&nbsp;dic 'Possumus id tibi vendere.';
} | ␣

## 2

Hic probare debes si `$x` inter 10 et 15 est. Ipsos 10 et 15 noli includere.

{:.quiz-code}
. | my $x = 12.3;
&lt; &lt; | si 10 ␣ $x ␣ 15 {
. | &nbsp;&nbsp;&nbsp;&nbsp;dic 'Valor $x acceptabilis est.';
. | }

{% include quiz.html %}
<script>
    replacements = [['≥', '>=']];
</script>

{% include nav.html %}
