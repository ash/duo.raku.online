---
title: Тип повернення
---

{% include menu.html %}

Ви також можете задати тип для результату функції. Є кілька способів записати це в коді.

```raku
sub add(Int $x, Int $y) returns Int { $x + $y }

my Int sub add(Int $x, Int $y) { $x + $y }

sub add(Int $x, Int $y) of Int { $x + $y }

sub add(Int $x, Int $y --> Int) { $x + $y }
```

Виберіть той, який вам найбільше подобається. Подивіться на четвертий приклад. Там тип результату стоїть усередині дужок. Параметри функції теж там.

{% include nav.html %}
