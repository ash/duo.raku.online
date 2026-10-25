---
title: 'Quiz: `if`'
---

{% include menu.html %}

Termina estos programas.

## 1

Este programa comprueba la edad. ¿Es de 21 años o más?

{:.quiz-code}
. | my $age = 24;
>= { | if $age ␣␣ 21 ␣ | Aquí se pueden usar tanto `>=` como `≥`.
. | &nbsp;&nbsp;&nbsp;&nbsp;say &apos;We can sell it to you.&apos;;
} | ␣

## 2

Aquí debes comprobar si `$x` está entre 10 y 15. No incluyas el 10 ni el 15.

{:.quiz-code}
. | my $x = 12.3;
&lt; &lt; | if 10 ␣ $x ␣ 15 {
. | &nbsp;&nbsp;&nbsp;&nbsp;say &apos;The value of $x is acceptable.&apos;;
. | }

{% include quiz.html %}
<script>
    replacements = [['≥', '>=']];
</script>

{% include nav.html %}
