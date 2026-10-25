---
title: String concatenation in Raku
---

{% include menu.html %}

You can join two strings together. Then you get a new, longer string. We call this string concatenation. In Raku, you concatenate strings with an operator. Can you guess its name? It is the concatenation operator! This operator is a tilde: `~`. To concatenate two strings, put `~` between them:

```raku
say 'Hello, ' ~ 'World!';
```

Sometimes the strings are in variables. Then we can ‘concatenate the variables’. Well, really we concatenate the strings in these variables:

```raku
my $greeting = 'Hello, ';
my $who = 'World!';

say $greeting ~ $who;
```

You can also put the result into a new variable:

```raku
my $greeting = 'Hello, ';
my $who = 'World!';
my $message = $greeting ~ $who;

say $message;
```

## Concatenation and assignment in one step

Sometimes you want to add a string to the end of a variable. Then use this form:

```raku
# Instead of 
$str = $str ~ $another-str;

# use:
$str ~= $another-str;
```

{% include nav.html %}
