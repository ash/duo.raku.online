---
title: Quiz — Calling a function
---

{% include menu.html %}

## 1

Here is a function:

```raku
sub abc($a, $b, $c) {
    return $a ~ $b ~ $c;
}
```

How do you call it?

{:.quiz-code}
, , | say abc($a␣ $b␣ $c);
= | my $s ␣ abc(&apos;a&apos;, &apos;b&apos;, &apos;c&apos;);
= abc ) | my $z ␣ ␣␣␣($a, $b, $c␣;
, , | say abc $a␣ $b␣ $c;

## 2

Here is another function:

```raku
sub x {
    return 42;
}
```

Choose the correct calls of this function.

{:.quiz}
1 | say x;
1 | say(x);
1 | say x(); | Parentheses around the arguments of `say` are omitted.
1 | say(x());
0 | my $v = x (); | A space before `()` makes the `()` an argument.
1 | my $w = x();
1 | my $u = x;

{% include quiz.html %}

{% include nav.html %}
