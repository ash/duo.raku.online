---
title: 'Розв''язання: Секція Pod'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

## Код

```raku
=begin pod

=head1 My Module

This module does something useful.

=end pod

say $=pod[0].contents.elems;
```

🦋 Вихідний код можна знайти у файлі [a-pod-section.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/pod/a-pod-section.raku).

## Вивід

```
2
```

## Коментарі

1. `$=pod` містить Pod файлу як список блоків. `$=pod[0]` — єдиний блок `=begin pod`.

1. Його `.contents` — це блоки всередині нього, тобто заголовок `=head1` і абзац. Тож `.contents.elems` дорівнює `2`. Заходячи так у структуру, програма читає власну документацію як дані.

{% include nav.html %}
