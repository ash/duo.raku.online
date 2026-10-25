---
title: Тип на връщане
---

{% include menu.html %}

Можете да зададете и тип на резултата на функцията. Има няколко начина да напишете това в кода.

```raku
sub add(Int $x, Int $y) returns Int { $x + $y }

my Int sub add(Int $x, Int $y) { $x + $y }

sub add(Int $x, Int $y) of Int { $x + $y }

sub add(Int $x, Int $y --> Int) { $x + $y }
```

Изберете този, който ви харесва най-много. Вижте четвъртия пример. Там типът на резултата е вътре в скобите. Параметрите на функцията също са там.

{% include nav.html %}
