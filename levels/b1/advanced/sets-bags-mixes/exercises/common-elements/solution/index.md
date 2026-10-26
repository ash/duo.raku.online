---
title: The solution of ’Common elements‘
---

{% include menu.html %}

Here is one possible solution.

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

1. The intersection `$a ∩ $b` is a set itself, here `{banana, cherry}`. So it has `2` elements. If you like ASCII better, write `(&)` instead of `∩`.

1. The intersection is a set, so `∈` can tell you whether a value is in it. `apple` is only in the first set, so it is not in the intersection. The test returns `False`.

{% include nav.html %}
