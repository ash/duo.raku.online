---
title: Quiz — if
---

{% include menu.html %}

Finish these programs.

## 1

This program checks the age. Is it 21 years or more?

{:.quiz-code}
. | my $age = 24;
>= { | if $age ␣␣ 21 ␣ | Both `>=` and `≥` can be used here.
. | &nbsp;&nbsp;&nbsp;&nbsp;say &apos;We can sell it to you.&apos;;
} | ␣

## 2

Here, you must check if `$x` is between 10 and 15. Do not include 10 and 15 themselves.

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
