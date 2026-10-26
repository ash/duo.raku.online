---
title: 'Розв''язання: Форматований текст'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

## Код

```raku
=begin pod

=head1 Greeting

Hello, B<world>!

=end pod
```

🦋 Вихідний код можна знайти у файлі [formatted-text.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/pod/formatted-text.raku).

## Вивід

Запуск через `raku --doc`:

```
Greeting

Hello, world!
```

## Коментарі

1. `B<world>` позначає слово як жирне. Коли його відображають як простий текст, воно виглядає як звичайний текст. Але багатші формати показують його жирним.

1. `raku --doc` відображає Pod, але не виконує жодного коду програми.

1. Щоб справді *побачити* жирний текст, відобразіть Pod у формат, який має стилі. Встановіть форматувальник, наприклад `Pod::To::HTML`, через `zef install Pod::To::HTML`. Потім запустіть `raku --doc=HTML formatted-text.raku`. Тепер слово виходить усередині елемента HTML `<b>`. Простий текстовий вивід `--doc` інший. Він не може показати жирний текст, коли потрапляє у файл чи канал.

{% include nav.html %}
