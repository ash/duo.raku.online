---
title: Quiz — Llamar una función
---

{% include menu.html %}

## 1

Aquí tienes una función:

```raku
sub abc($a, $b, $c) {
    return $a ~ $b ~ $c;
}
```

¿Cómo la llamas?

{:.quiz-code}
, , | say abc($a␣ $b␣ $c);
= | my $s ␣ abc(&apos;a&apos;, &apos;b&apos;, &apos;c&apos;);
= abc ) | my $z ␣ ␣␣␣($a, $b, $c␣;
, , | say abc $a␣ $b␣ $c;

## 2

Aquí tienes otra función:

```raku
sub x {
    return 42;
}
```

Elige las llamadas correctas a esta función.

{:.quiz}
1 | say x;
1 | say(x);
1 | say x(); | Se omiten los paréntesis alrededor de los argumentos de `say`.
1 | say(x());
0 | my $v = x (); | Un espacio antes de `()` hace que `()` sea un argumento.
1 | my $w = x();
1 | my $u = x;

{% include quiz.html %}

{% include nav.html %}
