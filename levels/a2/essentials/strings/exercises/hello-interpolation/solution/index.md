---
title: Solution to ’Hello, Interpolation!‘
---

{% include menu.html %}

## Code

Here is one way to solve this task:

```raku
my $name = prompt 'What is your name? ';
say "Hello, $name! Your name has {$name.chars} letters.";
```

🦋 You can find the source code in the file [hello-interpolation.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/hello-interpolation.raku).

## Output

Run the program. It stops and waits for your input. Type the name and press Enter. Then the program goes on. It prints the greeting:

```console
$ raku exercises/strings/hello-interpolation.raku
What is your name? Raku
Hello, Raku! Your name has 4 letters.
```

## Comments

Note that the string is in double quotes this time. In double quotes, Raku interpolates the variable `$name`. So the value of `$name` goes into the string. But interpolation can do more. Raku takes anything in curly braces as code, like `{$name.chars}`. It runs this code. Then it puts the result into the string. Here, we use the `chars` method again. It counts the letters of the name right inside the greeting.

{% include nav.html %}
