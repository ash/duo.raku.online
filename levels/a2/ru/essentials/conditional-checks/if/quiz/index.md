---
title: 'Тест: `if`'
---

{% include menu.html %}

Закончите эти программы.

## 1

Эта программа проверяет возраст. Это 21 год или больше?

{:.quiz-code}
. | my $age = 24;
>= { | if $age ␣␣ 21 ␣ | Оба `>=` и `≥` могут быть использованы.
. | &nbsp;&nbsp;&nbsp;&nbsp;say &apos;We can sell it to you.&apos;;
} | ␣

## 2

Здесь нужно проверить, находится ли `$x` между 10 и 15. Сами 10 и 15 не включайте.

{:.quiz-code}
. | my $x = 12.3;
&lt; &lt; | if 10 ␣ $x ␣ 15 {
. | &nbsp;&nbsp;&nbsp;&nbsp;say &apos;The value of $x is acceptable.&apos;;
. | }

{% include quiz.html %}
<script>
    replacements = [['≥', '>=']];
</script>

{% assign human=1 %}
{% include nav.html %}
