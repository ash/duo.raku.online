---
title: 'Решение: Форматированный текст'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
=begin pod

=head1 Greeting

Hello, B<world>!

=end pod
```

🦋 Исходный код можно найти в файле [formatted-text.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/pod/formatted-text.raku).

## Вывод

Запустите его с `raku --doc`:

```
Greeting

Hello, world!
```

## Комментарии

1. `B<world>` делает слово жирным. В простом тексте оно выглядит как обычный текст. Но более богатые форматы показывают его жирным.

1. `raku --doc` показывает Pod как текст. Он не запускает код программы.

1. Хотите на самом деле *увидеть* жирный шрифт? Тогда превратите Pod в формат со стилями. Сначала установите модуль-форматтер, например `Pod::To::HTML`. Для этого используйте `zef install Pod::To::HTML`. Потом запустите `raku --doc=HTML formatted-text.raku`. Теперь слово стоит внутри HTML-элемента `<b>`. С простым текстом из `--doc` всё иначе. Он не может показать жирный шрифт в файле или конвейере.

{% include nav.html %}
