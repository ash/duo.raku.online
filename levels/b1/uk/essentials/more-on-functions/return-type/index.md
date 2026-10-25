---
title: Тип повернення
---

{% include menu.html %}

Ви також можете явно задати тип результату функції. Є кілька способів записати це в коді.

```raku
sub add(Int $x, Int $y) returns Int { $x + $y }

my Int sub add(Int $x, Int $y) { $x + $y }

sub add(Int $x, Int $y) of Int { $x + $y }

sub add(Int $x, Int $y --> Int) { $x + $y }
```

Виберіть той, який вам найбільше подобається. Зверніть увагу на четвертий приклад. Там тип повернення стоїть усередині дужок, разом із параметрами функції.

{% include nav.html %}
