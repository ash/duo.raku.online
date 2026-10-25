---
title: Quiz — Vocando functionem
---

{% include menu.html %}

## 1

Ecce functio:

```raku
sub abc($a, $b, $c) {
    return $a ~ $b ~ $c;
}
```

Quomodo eam vocas?

{:.quiz-code}
, , | dic abc($a␣ $b␣ $c);
= | meus $s ␣ abc(&apos;a&apos;, &apos;b&apos;, &apos;c&apos;);
= abc ) | meus $z ␣ ␣␣␣($a, $b, $c␣;
, , | dic abc $a␣ $b␣ $c;

## 2

Ecce alia functio:

```raku
sub x {
    return 42;
}
```

Elige rectas vocationes huius functionis.

{:.quiz}
1 | dic x;
1 | dic(x);
1 | dic x(); | Parenthese circa argumenta `say` omittuntur.
1 | dic(x());
0 | meus $v = x (); | Spatium ante `()` facit `()` argumentum.
1 | meus $w = x();
1 | meus $u = x;

{% include quiz.html %}

{% include nav.html %}
