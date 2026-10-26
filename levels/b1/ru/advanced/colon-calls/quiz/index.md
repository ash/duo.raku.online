---
title: Тест — Вызов через двоеточие
translations_gpt: 'Тест — Вызов с двоеточием'
---

{% include menu.html %}

Что выведет следующая программа?

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

Двоеточие забирает *весь* остаток выражения как список аргументов. Поэтому `substr: 0, 3` — то же самое, что `substr(0, 3)`, и передаются оба аргумента. Он начинает с индекса `0` и берёт `3` символа, что даёт `pro`.

</div>

{% include nav.html %}
