---
title: Тест — gist и Str
---

{% include menu.html %}

Что напечатает следующая программа?

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

`.Str` даёт простую строковую форму. Здесь элементы просто соединены пробелами, без скобок: `1 2 3`. Форму со скобками, `[1 2 3]`, вы получаете от `.gist`, а значит, и от `say @a`.

</div>

{% include nav.html %}
