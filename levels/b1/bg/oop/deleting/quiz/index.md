---
title: 'Тест — Изтриване на файлове'
translations_gpt:
---

{% include menu.html %}

Какво отпечатва следната програма?

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

`rmdir` премахва само **празна** директория. Тук `data` още съдържа `x.txt`, затова `rmdir` не премахва нищо. Директорията остава на мястото си и `.e` още дава `True`. За да изтриете директорията, първо трябва да премахнете съдържанието ѝ, например с `.unlink for 'data'.IO.dir`. След това трябва да извикате `rmdir`.

</div>

{% include nav.html %}
