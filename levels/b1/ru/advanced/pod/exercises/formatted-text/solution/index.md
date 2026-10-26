---
title: 'Решение: Форматированный текст'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
=begin pod

=head1 Greeting

Hello, B<world>!

=end pod
```

🦋 Исходный код можно найти в файле [formatted-text.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/pod/formatted-text.raku).

## Вывод

Запустите с `raku --doc`:

```
Greeting

Hello, world!
```

## Комментарии

1. `B<world>` выделяет слово жирным. Когда его отрисовывают как простой текст, оно выглядит как обычный текст. Но более богатые форматы показывают его жирным.

1. `raku --doc` отрисовывает Pod, но не запускает код программы.

1. Чтобы действительно *увидеть* жирный текст, отрисуйте Pod в формат со стилями. Установите форматтер, например `Pod::To::HTML`, командой `zef install Pod::To::HTML`. Затем запустите `raku --doc=HTML formatted-text.raku`. Теперь слово выводится внутри HTML-элемента `<b>`. С обычным текстом из `--doc` всё по-другому. Он не может показать жирный шрифт, когда идёт в файл или конвейер.

{% include nav.html %}
