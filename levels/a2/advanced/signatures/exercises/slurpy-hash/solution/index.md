---
title: The solution of ’Slurpy named arguments‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. First, the fixed positional parameter `$name` gets its value. Then the slurpy `*%opts` collects all the other named arguments. It puts them into a hash.

1. `%opts.sort` sorts the pairs by key. So the output is always the same: `colour` comes before `size`. `.map` makes a `key=value` string from each pair. It uses `.key` and `.value` for this. Then `.join(', ')` joins the strings together.

1. The last string has the values of `$name` and `$details` inside it. We built `$details` before. The result is `Anna: colour=red, size=5`.

{% include nav.html %}
