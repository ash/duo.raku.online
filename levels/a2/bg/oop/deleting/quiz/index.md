---
title: 'Тест — Изтриване на файлове'
translations_gpt:
---

{% include menu.html %}

Какво отпечатва тази програма?

```raku
mkdir 'data';
spurt 'data/x.txt', 'hi';
rmdir 'data';
say 'data'.IO.e;
```

{:.quiz}
1 | True
0 | False
0 | грешка
0 | Nil

{% include quiz.html %}

<div class="extended-explanation">

`rmdir` премахва само **празна** директория. Тук в `data` още има `x.txt`. Затова `rmdir` не премахва нищо. Директорията остава на мястото си. Ето защо `.e` още дава `True`. Как да изтриете директорията? Първо премахнете всичко в нея, например с `.unlink for 'data'.IO.dir`. После извикайте `rmdir`.

</div>

{% include nav.html %}
