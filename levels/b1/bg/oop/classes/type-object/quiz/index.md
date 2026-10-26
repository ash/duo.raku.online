---
title: 'Тест — Класове'
translations_gpt:
---

{% include menu.html %}

Какво отпечатва следната програма? Помнете, че `WHAT` съобщава *типа*. За да видите дали стойността е обект на типа, или екземпляр, ви трябва `defined`.

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
