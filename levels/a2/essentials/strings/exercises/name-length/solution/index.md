---
title: Solution to ’Name length‘
---

{% include menu.html %}

## Code

Here is the solution to the task:

```raku
my $first = prompt 'First name: ';
my $last  = prompt 'Last name: ';
say ($first ~ $last).chars;
```

🦋 You can find the source code in the file [name-length.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/name-length.raku).

## Output

Run the program. Enter the two names.

```console
$ raku exercises/strings/name-length.raku 
First name: Ada
Last name: Lovelace
11
```

## Comments

First, the `~` operator joins the two names. After that, we call the `chars` method on the result. The parentheses are important here. Without them, `chars` works only on `$last`. We join the names directly. There is no space between them. So the space does not count. `Ada` has 3 letters, and `Lovelace` has 8. Together, that is 11.

{% include nav.html %}
