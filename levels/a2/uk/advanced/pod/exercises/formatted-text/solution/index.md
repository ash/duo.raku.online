---
title: 'Розв''язання: Форматований текст'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
=begin pod

=head1 Greeting

Hello, B<world>!

=end pod
```

🦋 Вихідний код можна знайти у файлі [formatted-text.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/pod/formatted-text.raku).

## Вивід

Запустіть його через `raku --doc`:

```
Greeting

Hello, world!
```

## Коментарі

1. `B<world>` робить слово жирним. У простому тексті воно виглядає як звичайний текст. Але багатші формати показують його жирним.

1. `raku --doc` показує Pod як текст. Він не запускає жодного коду програми.

1. Хочете справді *побачити* жирний текст? Тоді перетворіть Pod на формат зі стилями. Спершу встановіть модуль-форматувальник, наприклад `Pod::To::HTML`. Для цього використайте `zef install Pod::To::HTML`. Потім запустіть `raku --doc=HTML formatted-text.raku`. Тепер слово стоїть усередині елемента HTML `<b>`. Простий текст від `--doc` інший. Він не може показати жирний текст у файлі чи каналі.

{% include nav.html %}
