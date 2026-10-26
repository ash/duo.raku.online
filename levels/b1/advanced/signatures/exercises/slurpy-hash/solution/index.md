---
title: The solution of ’Slurpy named arguments‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
sub describe($name, *%opts) {
    my $details = %opts.sort.map({ "{.key}={.value}" }).join(', ');
    "$name: $details";
}

say describe('Anna', colour => 'red', size => 5);
```

🦋 You can find the source code in the file [slurpy-hash.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/signatures/slurpy-hash.raku).

## Output

```
Anna: colour=red, size=5
```

## Comments

1. The fixed positional parameter `$name` gets its value first. Then the slurpy `*%opts` collects all the remaining named arguments into a hash.

1. `%opts.sort` puts the pairs in order by key, so the output is always the same: `colour` comes before `size`. The `.map` turns each pair into a `key=value` string with `.key` and `.value`. Then `.join(', ')` joins the strings together.

1. The final string includes the values of `$name` and of the finished `$details`. This gives `Anna: colour=red, size=5`.

{% include nav.html %}
