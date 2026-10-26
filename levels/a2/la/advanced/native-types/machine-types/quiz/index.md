---
title: Quiz — Typi nativi
translations_gpt:
---

{% include menu.html %}

Quid hoc programma imprimit?

```raku
my int $n = 42;
say $n.^name;
```

{:.quiz}
1 | Int
0 | int
0 | (Int)
0 | Num

{% include quiz.html %}

<div class="extended-explanation">

Interroga valorem nativum de se ipso, et Raku eum automatice *involvit*. Valorem in typum plenum respondentem ponit. Codex `$n` ut nativum `int` declarat. Sed `.^name` nomen typi eius petit. Itaque typum involutum accipis, `Int`.

</div>

{% include nav.html %}
