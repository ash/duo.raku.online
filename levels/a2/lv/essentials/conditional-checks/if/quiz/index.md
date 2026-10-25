---
title: 'Tests: `if`'
---

{% include menu.html %}

Pabeidziet šīs programmas.

## 1

Šī programma pārbauda vecumu. Vai tas ir 21 gads vai vairāk?

{:.quiz-code}
. | my $age = 24;
>= { | if $age ␣␣ 21 ␣ | Šeit var lietot gan `>=`, gan `≥`.
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'We can sell it to you.';
} | ␣

## 2

Šeit jums jāpārbauda, vai `$x` ir starp 10 un 15. Neieskaitiet pašus skaitļus 10 un 15.

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
