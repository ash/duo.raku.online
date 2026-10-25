---
title: Ternary operator
---

{% include menu.html %}

The ternary operator in Raku has two parts: `??` ... `!!`. First, there is a Boolean test. Its result is `True` or `False`. Two expressions come after the test. Raku runs only one of them. The result of the test chooses which one.

```raku
my $shines = 'Sun';
my $day-time = $shines eq 'Sun' ?? 'day' !! 'night';
say $day-time;
```

With the current value of `$shines`, the program prints `day`. Change the value to `Moon`. Then the result is `night`.

You can join ternary expressions in a chain. But do not make it too difficult.

```raku
my $hours = 20;
my $day-time =
    $hours <= 6 ?? 'Night' !!
    $hours <= 12 ?? 'Morning' !! 
    $hours <= 18 ?? 'Afternoon' !! 'Evening';
say $day-time;
```

Here, the program prints a part of the day. The part depends on the value in `$hours`.

{% include nav.html %}
