---
title: 'Решение: Секция Pod'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

1. `$=pod` содержит Pod файла в виде списка блоков. `$=pod[0]` — это единственный блок `=begin pod`.

1. Его `.contents` — это блоки внутри него, то есть заголовок `=head1` и абзац. Поэтому `.contents.elems` равно `2`. Когда программа так проходит по структуре, она читает свою документацию как данные.

{% include nav.html %}
