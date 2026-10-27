---
title: 'Тест — Видалення файлів'
translations_gpt:
---

{% include menu.html %}

Що виведе наведена програма?

```raku
mkdir 'data';
spurt 'data/x.txt', 'hi';
rmdir 'data';
say 'data'.IO.e;
```

{:.quiz}
1 | True
0 | False
0 | помилку
0 | Nil

{% include quiz.html %}

<div class="extended-explanation">

`rmdir` видаляє лише **порожній** каталог. Тут `data` ще містить `x.txt`, тож `rmdir` нічого не видаляє. Каталог лишається на своєму місці, і `.e` досі дає `True`. Щоб видалити каталог, треба спершу прибрати його вміст, наприклад через `.unlink for 'data'.IO.dir`. Потім треба викликати `rmdir`.

</div>

{% include nav.html %}
