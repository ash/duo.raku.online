---
title: Тип на връщане
---

{% include menu.html %}

Можете също да дадете явен тип на резултата на функцията. Има няколко начина да запишете това в кода.

```raku
sub add(Int $x, Int $y) returns Int { $x + $y }

my Int sub add(Int $x, Int $y) { $x + $y }

sub add(Int $x, Int $y) of Int { $x + $y }

sub add(Int $x, Int $y --> Int) { $x + $y }
```

Изберете този, който ви харесва най-много. Обърнете внимание на четвъртия пример. Там типът на връщане е в скобите, заедно с параметрите на функцията.

{% include nav.html %}
