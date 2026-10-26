---
title: Тест — Нативни типове
translations_gpt:
---

{% include menu.html %}

Какво отпечатва следната програма?

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

Когато попитате нативна стойност за самата нея, Raku автоматично я *обвива*. Стойността отива в съответния пълен тип. Тук `$n` е декларирана като нативен `int`. Но `.^name` все пак показва нейния тип като обвития `Int`.

</div>

{% include nav.html %}
