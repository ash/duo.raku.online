---
title: The solution of ’A changeable label‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
class Label {
    has $.text is rw;
}

my $l = Label.new(text => 'draft');
$l.text ~= ' (revised)';
say $l.text;
```

🦋 You can find the source code in the file [changeable-label.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/changeable-label.raku).

## Output

```
draft (revised)
```

## Comments

1. The `is rw` trait makes the accessor return a writable container. So the accessor can be on the left side of an assignment.

1. Because the container is writable, the compound operator `~=` works on it too. `$l.text ~= ' (revised)'` reads the current text, adds the new ending and stores the result back. All this happens through the same accessor.

{% include nav.html %}
