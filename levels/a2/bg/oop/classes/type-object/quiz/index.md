---
title: 'Тест — Класове'
translations_gpt:
---

{% include menu.html %}

Какво отпечатва тази програма? Помнете, че `WHAT` показва *типа*. Но `defined` показва нещо друго. Обект на типа ли е стойността, или екземпляр?

```raku
class Dog {
}

say Dog.WHAT === Dog.new.WHAT;
```

{:.quiz}
0 | False
1 | True
0 | (Dog)
0 | грешка

{% include quiz.html %}

{% include nav.html %}
