---
title: 'Розв''язання: Порядок розв''язання методів'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
class A {
}

class B is A {
}

class C is B {
}

say C.^mro.map(*.^name);
```

🦋 Вихідний код можна знайти у файлі [the-mro.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/the-mro.raku).

## Вивід

```
(C B A Any Mu)
```

## Коментарі

1. `.^mro` повертає ланцюжок типів. Raku шукає метод у цьому ланцюжку.

1. Ланцюжок іде лінією успадкування, крок за кроком. Першим іде `C`. Потім іде його батько, `B`. Потім іде `A`, батько `B`. Наприкінці йдуть `Any` та `Mu`. Кожен тип закінчується ними. Коли рівнів класів більше, список просто довший.

{% include nav.html %}
