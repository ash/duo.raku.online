---
title: Тест — gist и Str
translations_gpt:
---

{% include menu.html %}

Какво отпечатва тази програма?

```raku
my @a = 1, 2, 3;
say @a.Str;
```

{:.quiz}
0 | [1 2 3]
1 | 1 2 3
0 | (1 2 3)
0 | 1, 2, 3

{% include quiz.html %}

<div class="extended-explanation">

`.Str` дава формата на обикновен низ. Елементите са просто свързани с интервали. Няма скоби: `1 2 3`. Формата със скоби, `[1 2 3]`, идва от `.gist`. Затова и `say @a` я отпечатва.

</div>

{% include nav.html %}
