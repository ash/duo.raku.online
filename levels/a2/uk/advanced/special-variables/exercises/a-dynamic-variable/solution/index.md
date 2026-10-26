---
title: 'Розв''язання: Динамічна змінна'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
my $*user = 'guest';

sub whoami {
    say "running as $*user";
}

whoami();

{
    my $*user = 'admin';
    whoami();
}
```

🦋 Вихідний код можна знайти у файлі [a-dynamic-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/special-variables/a-dynamic-variable.raku).

## Вивід

```
running as guest
running as admin
```

## Коментарі

1. Твіґіл `*` робить `$*user` динамічною. `whoami` ніколи не отримує її як параметр. Вона знаходить значення через стек викликів. Тож перший виклик показує типове значення, `guest`.

1. Внутрішній блок знову оголошує `$*user` як `admin`. Це триває, поки виконується блок. *Та сама* `whoami` тепер бачить `admin`. Динамічний пошук перевіряє, хто зараз є в стеку викликів. Ви перекриваєте динамічну змінну в області видимості. Тоді весь код, який ви звідти викликаєте, отримує більше прав. І ви зовсім не змінюєте `whoami`.

{% include nav.html %}
