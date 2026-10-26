---
title: 'Розв''язання: Динамічна змінна'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків задачі.

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

1. Твіґіл `*` робить `$*user` динамічною. `whoami` ніколи не отримує її як параметр. Натомість вона знаходить значення, дивлячись назовні по стеку викликів. Тож перший виклик показує типове значення, `guest`.

1. Внутрішній блок знову оголошує `$*user` як `admin`, і це триває, поки виконується блок. *Та сама* `whoami` тепер бачить `admin`. Це тому, що динамічний пошук іде за тим, хто зараз є в стеку. Якщо перекрити динамічну змінну в області видимості, усе, що звідти викликається, отримує більше прав. І вам зовсім не треба змінювати `whoami`.

{% include nav.html %}
