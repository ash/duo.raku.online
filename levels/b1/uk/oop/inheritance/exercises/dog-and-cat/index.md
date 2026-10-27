---
title: Вправа «Працівники та посади»
translations_gpt:
---

{% include menu.html %}

## Завдання

Визначте базовий клас `Employee` з атрибутом `name` і двома методами. Метод `role` повертає `'staff'`. Метод `badge` повертає рядок `<name> - <role>`, використовуючи власний метод `role`.

Потім визначте два дочірні класи, `Manager` та `Intern`, які успадковують від `Employee`. Вони перевизначають `role`: він повертає `'manager'` у `Manager` і `'intern'` в `Intern`.

Виведіть бейджі менеджера на ім'я `Anna` і стажера на ім'я `Bob`.

## Приклад

Програма виводить:

```
Anna - manager
Bob - intern
```

## Рішення

✅ [Дивіться рішення](solution)

{% include nav.html %}
