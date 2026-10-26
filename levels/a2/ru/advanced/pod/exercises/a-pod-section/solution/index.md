---
title: 'Решение: Секция Pod'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
=begin pod

=head1 My Module

This module does something useful.

=end pod

say $=pod[0].contents.elems;
```

🦋 Исходный код можно найти в файле [a-pod-section.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/pod/a-pod-section.raku).

## Вывод

```
2
```

## Комментарии

1. В `$=pod` лежит Pod файла. Это список блоков. `$=pod[0]` — единственный блок `=begin pod`.

1. Его `.contents` — это блоки внутри него: заголовок `=head1` и абзац. Поэтому `.contents.elems` равно `2`. Программа может так заходить в структуру. Так она читает свою документацию как данные.

{% include nav.html %}
