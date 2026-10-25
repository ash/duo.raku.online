---
title: Solution of ‘Converting user input to a number’
---

{% include menu.html %}

The program can be as simple as this:

## Code

```raku
my Int $n = prompt 'Enter a number: ';
say $n;
```

🦋 You can find the source code in the file [input-number.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/input-number.raku).

## Example

Run it and enter an integer, which can be positive or negative:

```console
$ raku exercises/typed-variables/input-number.raku
Enter a number: -42
-42
```

## Comments

As we have [seen](/essentials/typed-variables/allomorphs), `prompt` returns an `IntStr` value here. You can assign it to an `Int` variable without any coercion.

Note, though, that some strings cannot be converted to an integer. If you enter such a string, the program stops with an exception.

{% include nav.html %}
