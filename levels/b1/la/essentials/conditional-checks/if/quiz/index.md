---
title: 'Quiz: `if`'
---

{% include menu.html %}

Comple programmata infra.

## 1

This program has to check if the age is 21 years or more.

{:.quiz-code}
. | my $age = 24;
>= { | si $age ␣␣ 21 ␣ | Both `>=` and `≥` can be used here.
. | &nbsp;&nbsp;&nbsp;&nbsp;dic 'Possumus id tibi vendere.';
} | ␣

## 2

In hoc programmate probare debes num `$x` inter 10 et 15 sit. Valores ipsi 10 et 15 non includuntur.

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
