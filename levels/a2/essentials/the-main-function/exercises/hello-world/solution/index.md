---
title: 'Solution: Hello World!'
---

{% include menu.html %}

We are now far into the course. But we must come back to this program. Why? We just learned a new way to write Raku programs.

## Code 1

```raku
sub MAIN() {
    say 'Hello, World!';
}
```

🦋 Find the program in the file [hello-world.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/hello-world.raku).

## Code 2

```raku
unit sub MAIN;
say 'Hello, World!';
```

🦋 Find the program in the file [hello-world-unit.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/hello-world-unit.raku).

## Example

Run one of the two programs:

```console
$ raku exercises/the-main-function/hello-world.raku
Hello, World!

$ raku exercises/the-main-function/hello-world-unit.raku
Hello, World!
```

{% include nav.html %}
