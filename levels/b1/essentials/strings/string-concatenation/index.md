---
title: String concatenation in Raku
---

{% include menu.html %}

If you have two strings, you can join them and get a new, longer string. This is called string concatenation. In Raku, you concatenate strings with—guess what?—the concatenation operator. This operator is a tilde, `~`. To concatenate two strings, put `~` between them:

```raku
say 'Hello, ' ~ 'World!';
```

If our strings are kept in variables, we can ‘concatenate variables’. Well, to be exact, we concatenate the strings that those variables keep:

```raku
my $greeting = 'Hello, ';
my $who = 'World!';

say $greeting ~ $who;
```

Or you can create a new variable that keeps the result of the concatenation:

```raku
my $greeting = 'Hello, ';
my $who = 'World!';
my $message = $greeting ~ $who;

say $message;
```

## Concatenation with assignment

To add a new string to the end of a variable, use this form:

```raku
# Instead of 
$str = $str ~ $another-str;

# use:
$str ~= $another-str;
```

{% include nav.html %}
