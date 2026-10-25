---
title: Solution to ’Hello, Interpolation!‘
---

{% include menu.html %}

## Code

Here is one possible solution:

```raku
my $name = prompt 'What is your name? ';
say "Hello, $name! Your name has {$name.chars} letters.";
```

🦋 You can find the source code in the file [hello-interpolation.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/hello-interpolation.raku).

## Output

Run the program, and it will wait for your input. When you type the name and press Enter, the program continues and prints the greeting:

```console
$ raku exercises/strings/hello-interpolation.raku
What is your name? Raku
Hello, Raku! Your name has 4 letters.
```

## Comments

Note that this time, the string is in double quotes. In double quotes, the variable `$name` is interpolated, so its value goes into the string. But interpolation can do more than insert a variable. Anything in curly braces, like `{$name.chars}`, is treated as code: Raku runs it and inserts the result. Here, we use the `chars` method again. It counts the letters of the name right inside the greeting.

{% include nav.html %}
