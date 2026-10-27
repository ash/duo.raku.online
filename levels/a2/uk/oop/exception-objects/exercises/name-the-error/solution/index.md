---
title: 'Розв''язання: Назвіть помилку'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
sub risky {
    die 'sub failed';
}

{
    risky();

    CATCH {
        default {
            say .^name;
            say .message;
        }
    }
}
```

🦋 Вихідний код можна знайти у файлі [name-the-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/exception-objects/name-the-error.raku).

## Вивід

```
X::AdHoc
sub failed
```

## Коментарі

1. `die` стається всередині `risky`. Але виняток іде вгору до викликача. Викликач — це код, який викликав `risky`. Тут це блок. `CATCH` у цьому блоці обробляє виняток. Так зазвичай і працює обробка помилок. Код, який обробляє помилку, — це її обробник. Помилка і її обробник можуть бути в різних підпрограмах.

1. Простий `die` із рядком створює виняток `X::AdHoc`. `.^name` показує цей тип. `.message` повертає текст, який ми дали `die`.

{% include nav.html %}
