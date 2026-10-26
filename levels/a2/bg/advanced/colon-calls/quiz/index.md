---
title: Тест — Извикване с двоеточие
translations_gpt:
---

{% include menu.html %}

Какво отпечатва тази програма?

```raku
say 'programming'.substr: 0, 3;
```

{:.quiz}
1 | pro
0 | program
0 | ing
0 | (0 3)

{% include quiz.html %}

<div class="extended-explanation">

Двоеточието взема *целия* остатък от израза. Всичко това става списъкът с аргументи. Затова `substr: 0, 3` е същото като `substr(0, 3)`. И двата аргумента отиват в `substr`. Той започва от индекс `0` и взема `3` символа. Резултатът е `pro`.

</div>

{% include nav.html %}
