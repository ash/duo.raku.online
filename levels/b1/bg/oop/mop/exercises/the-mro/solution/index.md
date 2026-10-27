---
title: 'Решение: Редът на разрешаване на методите'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

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

🦋 Намерете програмата във файла [the-mro.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/the-mro.raku).

## Изход

```
(C B A Any Mu)
```

## Коментари

1. `.^mro` връща веригата от типове, която Raku претърсва, когато търси метод.

1. Веригата следва линията на наследяване стъпка по стъпка. Първо идва `C`, после родителят му `B`, а после родителят на `B` — `A`. Накрая идват `Any` и `Mu`, защото всеки тип завършва с тях. При по-дълбока йерархия списъкът е просто по-дълъг.

{% include nav.html %}
