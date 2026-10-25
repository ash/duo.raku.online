---
title: Quiz — Variables as named parameters
---

{% include menu.html %}

Here is the function from the last quiz again:

```raku
sub f(:$a, :$b) {
    $a - $b
}
```

The program also has three variables:

```raku
my $a = 1;
my $b = 2;
my $c = 3;
```

You pass two of the three variables to the function. Which calls are correct? Mark all of them.

{:.quiz}
1 | f(a => $a, b => $b)
1 | f(a => $c, b => $c)
0 | f($a, $b) | Positional arguments are passed here instead of the named ones.
1 | f(:$a, :$b)
0 | f($:a, $:b) | Not a valid Raku syntax.
0 | f(:$b, :$c) | No named parameter `c`.
0 | f(:$a, c => $c) | No named parameter `c`.
1 | f(:$a, b => $c)
1 | f(:$a, :b($c)) | Same as above.
1 | f(:a($a), :b($c)) | Also fine, while a bit redundant.

{% include quiz.html %}

{% include nav.html %}
