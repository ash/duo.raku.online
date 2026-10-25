---
title: 'Тест: `if`'
---

{% include menu.html %}

Завършете тези програми.

## 1

Тази програма проверява възрастта. Дали тя е 21 години или повече?

{:.quiz-code}
. | my $age = 24;
>= { | if $age ␣␣ 21 ␣ | Тук могат да се използват както `>=`, така и `≥`.
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'We can sell it to you.';
} | ␣

## 2

Тук трябва да проверите дали `$x` е между 10 и 15. Не включвайте самите 10 и 15.

{:.quiz-code}
. | my $x = 12.3;
&lt; &lt; | if 10 ␣ $x ␣ 15 {
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'The value of $x is acceptable.';
. | }

{% include quiz.html %}
<script>
    replacements = [['≥', '>=']];
</script>

{% include nav.html %}
