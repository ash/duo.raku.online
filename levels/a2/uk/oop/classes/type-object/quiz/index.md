---
title: 'Тест — Класи'
translations_gpt:
---

{% include menu.html %}

Що виведе ця програма? Пам'ятайте, що `WHAT` показує *тип*. Але `defined` показує інше. Значення — це об'єкт типу чи екземпляр?

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
