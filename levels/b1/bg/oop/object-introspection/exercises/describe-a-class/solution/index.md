---
title: 'Решение: Опишете клас'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
class Animal {
}

class Dog is Animal {
}

say Dog.^name;
say Dog.^mro.elems;
say 'Cat' ∈ Dog.^mro.map(*.^name);
```

🦋 Намерете програмата във файла [describe-a-class.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/object-introspection/describe-a-class.raku).

## Изход

```
Dog
4
False
```

## Коментари

1. `.^name` връща името на самия клас, `Dog`.

1. `.^mro` връща веригата на наследяване, а `.elems` я преброява. Веригата има четири типа: `Dog`, родителят му `Animal`, както и `Any` и `Mu`, които има всеки клас. Затова броят е `4`.

1. `.^mro.map(*.^name)` превръща тази верига в списък от имена на типове — `(Dog Animal Any Mu)`. Операторът `∈` проверява принадлежност към множество. Тук той проверява дали `Cat` е сред тях. `Dog` не наследява никакъв `Cat`, така че отговорът е `False`.

{% include nav.html %}
