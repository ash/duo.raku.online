---
title: 'Розв''язання: Порядок розв''язання методів'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. `.^mro` повертає ланцюжок типів, у якому Raku шукає метод.

1. Ланцюжок іде лінією успадкування крок за кроком. Спершу йде `C`, потім його батько `B`, а потім батько `B` — `A`. Наприкінці йдуть `Any` та `Mu`, бо ними закінчується кожен тип. З глибшою ієрархією список просто довший.

{% include nav.html %}
