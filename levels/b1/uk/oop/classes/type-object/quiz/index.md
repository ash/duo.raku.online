---
title: 'Тест — Класи'
translations_gpt:
---

{% include menu.html %}

Що виведе наведена програма? Пам'ятайте, що `WHAT` показує *тип*. Щоб побачити, чи значення — об'єкт типу, чи екземпляр, вам потрібен `defined`.

```raku
class Dog {
}

say Dog.WHAT === Dog.new.WHAT;
```

{:.quiz}
0 | False
1 | True
0 | (Dog)
0 | помилку

{% include quiz.html %}

{% include nav.html %}
