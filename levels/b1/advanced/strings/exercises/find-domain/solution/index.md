---
title: The solution of ’The domain part‘
---

{% include menu.html %}

Here is one possible solution.

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

1. `index('@')` returns `4`, which is the position of the `@` sign, counting from zero.

1. `substr($at + 1)` starts one character after the `@`. Because no length is given, it goes to the end of the string. The result is `example.com`.

{% include nav.html %}
