---
title: Тест — Удаление файлов
translations_gpt:
---

{% include menu.html %}

Что выведет эта программа?

```raku
mkdir 'data';
spurt 'data/x.txt', 'hi';
rmdir 'data';
say 'data'.IO.e;
```

{:.quiz}
1 | True
0 | False
0 | ошибка
0 | Nil

{% include quiz.html %}

<div class="extended-explanation">

`rmdir` удаляет только **пустой** каталог. Здесь в `data` ещё лежит `x.txt`. Поэтому `rmdir` ничего не удаляет. Каталог остаётся на своём месте. Вот почему `.e` всё ещё даёт `True`. Как удалить этот каталог? Сначала удалите из него всё, например с помощью `.unlink for 'data'.IO.dir`. Потом вызовите `rmdir`.

</div>

{% include nav.html %}
