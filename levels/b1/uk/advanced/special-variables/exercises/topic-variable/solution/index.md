---
title: 'Розв''язання: Топічна змінна'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків задачі.

## Код

```raku
for 'apple', 'fig', 'cherry' {
    say "$_ has {.chars} letters";
}
```

🦋 Вихідний код можна знайти у файлі [topic-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/special-variables/topic-variable.raku).

## Вивід

```
apple has 5 letters
fig has 3 letters
cherry has 6 letters
```

## Коментарі

1. Цикл `for` по черзі записує в топічну змінну `$_` кожен елемент. Тож блок виконується тричі, і `$_` дорівнює `'apple'`, потім `'fig'`, потім `'cherry'`.

1. Усередині рядка `$_` вставляє поточне слово. Виклик `.chars`, скорочення від `$_.chars`, дає його довжину. Обидва використовують той самий топік, тож кількість завжди відповідає слову в рядку.

{% include nav.html %}
