---
title: 'Solution: Hello World!'
---

{% include menu.html %}

After a long way through the course, we come back to this program again. This is because we have just learned a new way of writing Raku programs.

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

Run either program:

```console
$ raku exercises/the-main-function/hello-world.raku
Hello, World!

$ raku exercises/the-main-function/hello-world-unit.raku
Hello, World!
```

{% include nav.html %}
