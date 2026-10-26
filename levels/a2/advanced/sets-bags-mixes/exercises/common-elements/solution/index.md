---
title: The solution of ’Common elements‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my $a = set(<apple banana cherry>);
my $b = set(<banana cherry date>);

my $common = $a ∩ $b;
say $common.elems;
say 'apple' ∈ $common;
```

🦋 You can find the source code in the file [common-elements.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sets-bags-mixes/common-elements.raku).

## Output

```
2
False
```

## Comments

1. The intersection `$a ∩ $b` is also a set. Here, it is `{banana, cherry}`. So it has `2` elements. If you want ASCII, write `(&)` instead of `∩`.

1. The intersection is a set. So `∈` can check if a value is in it. `apple` is only in the first set. So it is not in the intersection. The test returns `False`.

{% include nav.html %}
