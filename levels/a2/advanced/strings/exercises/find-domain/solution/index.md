---
title: The solution of ’The domain part‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my $email = 'user@example.com';

my $at = $email.index('@');
say $email.substr($at + 1);
```

🦋 You can find the source code in the file [find-domain.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/find-domain.raku).

## Output

```
example.com
```

## Comments

1. `index('@')` returns `4`. This is the position of the `@` sign. The count starts from zero.

1. `substr($at + 1)` starts one character after the `@`. There is no length. So it goes to the end of the string. The result is `example.com`.

{% include nav.html %}
