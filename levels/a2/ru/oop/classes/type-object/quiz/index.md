---
title: Тест — Классы
translations_gpt:
---

{% include menu.html %}

Что напечатает эта программа? Помните, что `WHAT` показывает *тип*. А `defined` показывает другое. Значение — это объект типа или экземпляр?

```raku
class Dog {
}

say Dog.WHAT === Dog.new.WHAT;
```

{:.quiz}
0 | False
1 | True
0 | (Dog)
0 | ошибка

{% include quiz.html %}

{% include nav.html %}
