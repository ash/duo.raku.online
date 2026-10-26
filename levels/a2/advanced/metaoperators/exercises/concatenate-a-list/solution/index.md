---
title: The solution of ’Build a URL‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my @parts = <http :// example .com>;

my $url = [~] @parts;
say $url;
say $url.chars;
```

🦋 You can find the source code in the file [concatenate-a-list.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/metaoperators/concatenate-a-list.raku).

## Output

```
http://example.com
18
```

## Comments

1. The array uses the quoting form with angle brackets, `<...>`. It is the same as `'http', '://', 'example', '.com'`.

1. `[~]` is a reduction meta-operator. It puts the operator `~` between all the elements. The operator `~` joins strings. So `[~] @parts` joins the four pieces into one string, `http://example.com`.

1. The result is in the variable `$url`. So we can use it again. `$url.chars` gives the length of the whole URL. It is `18` characters long.

{% include nav.html %}
