---
title: 'Quiz: `if`'
---

{% include menu.html %}

Maak deze programma’s af.

## 1

Dit programma controleert de leeftijd. Is die 21 jaar of meer?

{:.quiz-code}
. | my $age = 24;
>= { | if $age ␣␣ 21 ␣ | Zowel `>=` als `≥` kunnen hier worden gebruikt.
. | &nbsp;&nbsp;&nbsp;&nbsp;say 'We can sell it to you.';
} | ␣

## 2

Hier moet je controleren of `$x` tussen 10 en 15 ligt. Tel 10 en 15 zelf niet mee.

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
