---
title: Метаметоди
translations_gpt:
---

{% include menu.html %}

_Метаметод_ викликають через `.^` замість `.`. Звичайний `.method` виконує метод об'єкта. Але `.^method` викликає метод **метаоб'єкта** цього об'єкта. Тож він питає про тип, а не діє як тип.

Ви вже бачили `.^name`, який повертає ім'я типу:

```raku
say 42.^name; # Int
```

Інші метаметоди досліджують будову типу. `.^attributes` перелічує його атрибути, а `.^find_method` каже, чи існує метод:

```raku
class Animal {
    has $.name;
    method speak { 'generic' }
}

say Animal.^attributes.elems;          # 1
say so Animal.^find_method('speak');   # True
say so Animal.^find_method('fly');     # False
```

`.^mro` повертає _порядок розв'язання методів_. Це ланцюжок типів, у якому Raku по черзі шукає метод. Це лінія успадкування класу:

```raku
class A {}
class B is A {}

say B.^mro.map(*.^name); # (B A Any Mu)
```

`B` успадковує від `A`, а зрештою кожен тип успадковує від `Any` та `Mu`. Тож метод для `B` Raku шукає саме цим шляхом. Ці метаметоди перетворюють будову ваших типів на дані. Про ці дані можна питати під час виконання.

{% include nav.html %}
