---
title: 'Тест — Видалення файлів'
translations_gpt:
---

{% include menu.html %}

Що виведе ця програма?

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

`rmdir` видаляє лише **порожній** каталог. Тут у `data` ще лежить `x.txt`. Тож `rmdir` нічого не видаляє. Каталог лишається на місці. Тому `.e` і далі дає `True`. Як видалити цей каталог? Спочатку видаліть із нього все, наприклад через `.unlink for 'data'.IO.dir`. Потім викличте `rmdir`.

</div>

{% include nav.html %}
