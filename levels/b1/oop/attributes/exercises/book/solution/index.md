---
title: The solution of ’A book‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
class Book {
    has Str $.title;
    has Str $.author;
}

my $b = Book.new(title => 'Raku', author => 'Larry');
say "{$b.title} by {$b.author}";
```

🦋 You can find the source code in the file [book.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/book.raku).

## Output

```
Raku by Larry
```

## Comments

1. Both `has $.title` and `has $.author` declare an attribute and also an accessor that reads it.

1. Both accessors are used in one double-quoted string. Each one is inside curly braces, `{$b.title}` and `{$b.author}`. This is the form for putting code into a string. Raku runs the code in the braces and inserts its result. So the accessors are called, and their values go into the string.

1. Both attributes are strings, so it is a good idea to declare them as `Str`.

{% include nav.html %}
