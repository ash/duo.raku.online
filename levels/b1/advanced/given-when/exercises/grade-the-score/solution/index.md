---
title: The solution of ’Life stage from age‘
---

{% include menu.html %}

Here is one possible solution.

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

1. This solution mixes two kinds of `when`. The first is a *condition*, `$_ < 0`, where `$_` is the topic set by `given`. It filters out the invalid ages. The others are *ranges*, which group the valid ages into stages.

1. The order matters. The check for a negative age comes first. So it runs before any range is tried. The value `30` is in `20..64`, so the program prints `adult`.

1. The `default` block covers every age of 65 and above. None of the listed ranges catches these ages.

You could also turn this around and let `default` catch the *invalid* input instead. List every known stage, including `senior` as the condition `$_ >= 65`. Treat everything that is left, such as a negative age, as invalid:

```raku
given $age {
    when 0..12    { say 'child' }
    when 13..19   { say 'teenager' }
    when 20..64   { say 'adult' }
    when $_ >= 65 { say 'senior' }
    default       { say 'invalid' }
}
```

Here, `default` is a real “none of the above” branch. Which version reads better is a matter of taste. Put the check first when the invalid case is an exception. Or make it the `default` when all the valid stages are clearly listed.

{% include nav.html %}
