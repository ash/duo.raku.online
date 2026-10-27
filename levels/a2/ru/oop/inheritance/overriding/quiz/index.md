---
title: Тест — Наследование
translations_gpt:
---

{% include menu.html %}

Что напечатает эта программа?

```raku
class Animal {
    method speak { 'some sound' }
}

class Cow is Animal {
    method speak { 'Moo' }
}

say Cow.new.speak;
```

{:.quiz}
0 | some sound
1 | Moo
0 | Animal
0 | ошибка

{% include quiz.html %}

{% include nav.html %}
