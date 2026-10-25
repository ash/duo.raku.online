---
title: Solution of ‘Converting user input to a number’
---

{% include menu.html %}

The program can be very simple:

## Code

```raku
my Int $n = prompt 'Enter a number: ';
say $n;
```

🦋 You can find the source code in the file [input-number.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/input-number.raku).

## Example

Run it and enter an integer. It can be positive or negative:

```console
$ raku exercises/typed-variables/input-number.raku
Enter a number: -42
-42
```

## Comments

We [saw before](/essentials/typed-variables/allomorphs) that `prompt` returns an `IntStr` value. You can assign this value to an `Int` variable. You do not need to convert it.

But be careful. Sometimes you enter a string that Raku cannot convert to an integer. Then the program stops with an exception.

{% include nav.html %}
