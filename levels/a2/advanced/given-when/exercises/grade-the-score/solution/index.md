---
title: The solution of ’Life stage from age‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my $age = 30;

given $age {
    when $_ < 0 { say 'invalid' }
    when 0..12  { say 'child' }
    when 13..19 { say 'teenager' }
    when 20..64 { say 'adult' }
    default     { say 'senior' }
}
```

🦋 You can find the source code in the file [grade-the-score.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/given-when/grade-the-score.raku).

## Output

```
adult
```

## Comments

1. This solution has two kinds of `when`. The first one is a *condition*, `$_ < 0`. Here, `$_` is the topic from `given`. This condition catches the ages that make no sense. The other `when` blocks are *ranges*. They put the correct ages into stages.

1. The order is important. The check for a negative age comes first. So it runs before all the ranges. The value `30` is in `20..64`. So the program prints `adult`.

1. The `default` block is for every age of 65 and older. None of the ranges in the list has these ages.

There is also another way. Let `default` catch the *invalid* input. List every known stage. Write `senior` as the condition `$_ >= 65`. Everything else is invalid, for example, a negative age:

```raku
given $age {
    when 0..12    { say 'child' }
    when 13..19   { say 'teenager' }
    when 20..64   { say 'adult' }
    when $_ >= 65 { say 'senior' }
    default       { say 'invalid' }
}
```

Here, `default` really means “none of the above”. Which version is better? You can choose. Is the invalid case rare? Then put the check first. Do you list all the valid stages clearly? Then make the invalid case the `default`.

{% include nav.html %}
