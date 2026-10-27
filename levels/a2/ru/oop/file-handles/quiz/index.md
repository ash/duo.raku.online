---
title: Тест — Чтение строк
translations_gpt:
---

{% include menu.html %}

В файле `n.txt` три строки. Сколько раз выполнится тело этого цикла?

```raku
for 'n.txt'.IO.lines -> $line {
    say $line;
}
```

{:.quiz}
0 | 1
1 | 3
0 | 0
0 | по одному разу на каждый символ

{% include quiz.html %}

{% include nav.html %}
