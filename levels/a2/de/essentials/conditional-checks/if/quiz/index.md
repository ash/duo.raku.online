---
title: 'Quiz: `if`'
---

{% include menu.html %}

Schreiben Sie diese Programme zu Ende.

## 1

Dieses Programm prüft das Alter. Ist es 21 Jahre oder mehr?

{:.quiz-code}
. | my $age = 24;
>= { | if $age ␣␣ 21 ␣ | Hier können sowohl `>=` als auch `≥` verwendet werden.
. | &nbsp;&nbsp;&nbsp;&nbsp;sagen &apos;Wir können es Ihnen verkaufen.&apos;;
} | ␣

## 2

Hier müssen Sie prüfen, ob `$x` zwischen 10 und 15 liegt. Zählen Sie 10 und 15 selbst nicht mit.

{:.quiz-code}
. | my $x = 12.3;
&lt; &lt; | if 10 ␣ $x ␣ 15 {
. | &nbsp;&nbsp;&nbsp;&nbsp;sagen &apos;Der Wert von $x ist akzeptabel.&apos;;
. | }

{% include quiz.html %}
<script>
    replacements = [['≥', '>=']];
</script>

{% include nav.html %}
