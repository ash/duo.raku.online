---
title: 'Решение: Намерете метод'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
class Animal {
    method speak { 'generic' }
}

class Dog is Animal {
}

say so Dog.^find_method('speak');
```

🦋 Намерете програмата във файла [find-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/mop/find-method.raku).

## Изход

```
True
```

## Коментари

1. `.^find_method` връща метода, ако той съществува. Ако не съществува, връща недефинирана стойност. После `so` превръща това в обикновена булева стойност.

1. `Dog` не дефинира собствени методи, но резултатът все пак е `True`. `find_method` претърсва цялата верига на наследяване и намира `speak` по-нагоре, в `Animal`. Така и истинското извикване на метод върху `Dog` намира наследения метод.

{% include nav.html %}
