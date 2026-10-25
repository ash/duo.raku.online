---
title: Quiz — Chiamata di una funzione
---

{% include menu.html %}

## 1

Hai la seguente funzione:

```raku
sub abc($a, $b, $c) {
    return $a ~ $b ~ $c;
}
```

Come la chiami?

{:.quiz-code}
, , | say abc($a␣ $b␣ $c);
= | my $s ␣ abc(&apos;a&apos;, &apos;b&apos;, &apos;c&apos;);
= abc ) | my $z ␣ ␣␣␣($a, $b, $c␣;
, , | say abc $a␣ $b␣ $c;

## 2

Ecco un'altra funzione:

```raku
sub x {
    return 42;
}
```

Scegli le chiamate corrette di questa funzione.

{:.quiz}
1 | say x;
1 | say(x);
1 | say x(); | Le parentesi attorno agli argomenti di `say` sono omesse.
1 | say(x());
0 | my $v = x (); | Uno spazio prima di `()` rende `()` un argomento.
1 | my $w = x();
1 | my $u = x;

{% include quiz.html %}

{% include nav.html %}
