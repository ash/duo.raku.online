---
title: Solution to ’Hello, Concatenation!‘
---

{% include menu.html %}

## Code

Here is one way to solve this task:

```raku
my $name = prompt 'What is your name? ';
my $city = prompt 'Where are you from? ';
say 'Hello, ' ~ $name ~ ' from ' ~ $city ~ '!';
```

🦋 You can find the source code in the file [hello-concatenation.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/hello-concatenation.raku).

## Output

Run the program. It waits for your answer two times. Answer both questions. Then the program prints the greeting:

```console
$ raku exercises/strings/hello-concatenation.raku
What is your name? John
Where are you from? Berlin
Hello, John from Berlin!
```

## Comments

This time, the greeting has five pieces. The `~` operator joins them together. Three pieces are literal strings: `'Hello, '`, `' from '`, and `'!'`. The other two pieces are the variables between them. First, the five pieces become one string. After that, the program passes this string to `say`.

Compare this program with [the earlier version](../../../../scalar-variables/exercises/greet-a-person/solution). There, we gave `say` several strings with commas between them:

```raku
say 'Hello, ', $name, '!';
```

There, `say` gets several separate values. It prints them one after another. Here, we make one complete string ourselves.

{% include nav.html %}
