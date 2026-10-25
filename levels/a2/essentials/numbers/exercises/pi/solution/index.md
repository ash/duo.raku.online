---
title: Solution to ‘The value of π’
---

{% include menu.html %}

It is easy to print the value of π.

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

Raku has a built-in constant `π`. So the program is very simple. But there are other ways to do the same thing:

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
