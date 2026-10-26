---
title: The solution of ’Build a URL‘
---

{% include menu.html %}

Here is one possible solution.

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

1. The array is written with the angle-bracket quoting form `<...>`. It means the same as `'http', '://', 'example', '.com'`.

1. The reduction meta-operator `[~]` puts the `~` operator between all the elements. This operator joins strings. So `[~] @parts` joins the four pieces into the single string `http://example.com`.

1. We keep the result in `$url`, so that we can use it again. Then `$url.chars` shows that the complete URL is `18` characters long.

{% include nav.html %}
