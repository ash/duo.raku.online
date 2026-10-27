---
title: Тест — Удаление файлов
translations_gpt:
---

{% include menu.html %}

Что выведет следующая программа?

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

`rmdir` удаляет только **пустой** каталог. Здесь в `data` всё ещё есть `x.txt`, поэтому `rmdir` ничего не удаляет. Каталог остаётся на месте, и `.e` всё ещё даёт `True`. Чтобы удалить каталог, нужно сначала убрать его содержимое, например с помощью `.unlink for 'data'.IO.dir`. Затем нужно вызвать `rmdir`.

</div>

{% include nav.html %}
