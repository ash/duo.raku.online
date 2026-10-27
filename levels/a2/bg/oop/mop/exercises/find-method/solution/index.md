---
title: 'Решение: Намерете метод'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. `.^find_method` връща метода, ако го има. Ако не, връща недефинирана стойност. `so` превръща това в проста булева стойност, `True` или `False`.

1. `Dog` няма свои методи. Но резултатът е `True`. `find_method` търси в цялата верига на наследяване. Той намира `speak` по-нагоре, в `Animal`. Истинското извикване на метод върху `Dog` работи по същия начин. То също намира наследения метод така.

{% include nav.html %}
