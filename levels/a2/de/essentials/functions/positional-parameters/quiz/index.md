---
title: Quiz — Aufruf einer Funktion
---

{% include menu.html %}

## 1

Hier ist eine Funktion:

```raku
sub abc($a, $b, $c) {
    return $a ~ $b ~ $c;
}
```

Wie ruft man sie auf?

{:.quiz-code}
, , | say abc($a␣ $b␣ $c);
= | my $s ␣ abc(&apos;a&apos;, &apos;b&apos;, &apos;c&apos;);
= abc ) | my $z ␣ ␣␣␣($a, $b, $c␣;
, , | say abc $a␣ $b␣ $c;

## 2

Hier ist eine andere Funktion:

```raku
sub x {
    return 42;
}
```

Wählen Sie die richtigen Aufrufe dieser Funktion.

{:.quiz}
1 | say x;
1 | say(x);
1 | say x(); | Klammern um die Argumente von `say` werden weggelassen.
1 | say(x());
0 | my $v = x (); | Ein Leerzeichen vor `()` macht die `()` zu einem Argument.
1 | my $w = x();
1 | my $u = x;

{% include quiz.html %}

{% include nav.html %}
