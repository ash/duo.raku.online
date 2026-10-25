---
title: '`if` блоки'
---

{% include menu.html %}

`if` — это условная проверка. Она проверяет условие. Если условие равно `True`, `if` выполняет блок кода.

```raku
if 10 > 4 {
    say 'Mathematics works!';
}
```

Вам не нужно брать условие в круглые скобки. Но можно, если хотите.

Конечно, в проверках можно использовать переменные:

```raku
my $flag = False;
if $flag {
    # . . . do something
}
```

Иногда две или больше проверок используют одну и ту же переменную. Тогда сравнения можно записать цепочкой:

```raku
my $x = 42;
if 40 < $x < 45 {
    say "Correct answer $x is given.";
}
```

Иногда условие равно `False`. Тогда Raku не выполняет блок кода. Программа просто идёт дальше.

```raku
say 'Begin';
if False {
    say 'This is never printed.';
}
say 'End';
```

Эта программа выводит только `Begin` и `End`.

{% assign human=1 %}
{% include nav.html %}
