---
title: 'Решение: Порядок разрешения методов'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

🦋 Исходный код можно найти в файле [the-mro.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/the-mro.raku).

## Вывод

```
(C B A Any Mu)
```

## Комментарии

1. `.^mro` возвращает цепочку типов, которую Raku просматривает, когда ищет метод.

1. Цепочка идёт по линии наследования шаг за шагом. Сначала идёт `C`, затем его родитель `B`, а затем `A`, родитель `B`. В конце идут `Any` и `Mu`, потому что ими заканчивается каждый тип. Если иерархия глубже, список просто длиннее.

{% include nav.html %}
