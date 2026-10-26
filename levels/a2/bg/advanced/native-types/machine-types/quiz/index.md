---
title: Тест — Нативни типове
translations_gpt:
---

{% include menu.html %}

Какво отпечатва тази програма?

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

Попитайте нативна стойност за самата нея и Raku автоматично я *обвива*. Raku слага стойността в съответния пълен тип. `$n` е декларирана като нативен `int`. Но `.^name` пита за името на нейния тип. Затова получавате обвития тип, `Int`.

</div>

{% include nav.html %}
