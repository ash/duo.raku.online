---
title: Solution to ‘The value of π’
---

{% include menu.html %}

A program that prints the value of π is quite simple.

## Code

```raku
say π;
```

🦋 You can find the full code in the file [pi.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/pi.raku).

## Output

Run the program and see what it prints:

```console
$ raku exercises/numbers/pi.raku
3.141592653589793
```

## Comments

Raku gives us a built-in constant called `π`, so the program is very simple. Still, here are some other ways to do the same:

```raku
    π.say;
```

Or:

```raku
    pi.say;
```

Or:

```raku
    say pi;
```

{% include nav.html %}
