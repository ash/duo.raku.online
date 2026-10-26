---
title: The solution of ’A changeable label‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. The trait `is rw` changes the accessor. Now it returns a container that you can write to. So the accessor can stand on the left of an assignment.

1. You can write to the container. So the operator `~=` works with it too. This operator joins strings and assigns in one step. `$l.text ~= ' (revised)'` reads the current text. It adds the new part to the end. Then it saves the result back. All this goes through the same accessor.

{% include nav.html %}
