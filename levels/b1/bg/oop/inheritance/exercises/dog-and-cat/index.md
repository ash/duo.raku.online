---
title: Упражнение „Служители и роли“
translations_gpt:
---

{% include menu.html %}

## Задача

Дефинирайте базов клас `Employee` с атрибут `name` и два метода. Методът `role` връща `'staff'`. Методът `badge` връща низа `<name> - <role>`, като използва собствения си метод `role`.

След това дефинирайте два дъщерни класа, `Manager` и `Intern`, които наследяват `Employee`. Те предефинират `role`: той връща `'manager'` в `Manager` и `'intern'` в `Intern`.

Отпечатайте баджовете на мениджър на име `Anna` и на стажант на име `Bob`.

## Пример

Програмата отпечатва:

```
Anna - manager
Bob - intern
```

## Решение

✅ [Вижте решението](solution)

{% include nav.html %}
