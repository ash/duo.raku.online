---
title: The solution of ’A book‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. `has $.title` creates an attribute and an accessor for reading it. `has $.author` does the same.

1. The program uses both accessors in one string with double quotes. Each accessor is in curly braces: `{$b.title}` and `{$b.author}`. With braces, you can put code into a string. Raku runs the code in the braces. Then it puts the result into the string. So Raku calls the accessors, and their values go into the string.

1. Both attributes are strings. So it is good to give them the type `Str`.

{% include nav.html %}
