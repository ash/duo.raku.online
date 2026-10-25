---
title: Solution to ’Hello, Concatenation!‘
---

{% include menu.html %}

## Code

Here is one possible solution:

```raku
my $name = prompt 'What is your name? ';
my $city = prompt 'Where are you from? ';
say 'Hello, ' ~ $name ~ ' from ' ~ $city ~ '!';
```

🦋 You can find the source code in the file [hello-concatenation.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/hello-concatenation.raku).

## Output

Run the program, and it will wait twice for you to type something. When you have answered both prompts, it prints the greeting:

```console
$ raku exercises/strings/hello-concatenation.raku
What is your name? John
Where are you from? Berlin
Hello, John from Berlin!
```

## Comments

This time, the greeting is made of five pieces, which the `~` operator joins together. Three of them are literal strings: `'Hello, '`, `' from '` and `'!'`. The other two are the variables between them. First, they are all concatenated into one string. Only then is this string passed to `say`.

Compare this program with [the earlier version](../../../../scalar-variables/exercises/greet-a-person/solution). There, we passed several strings, separated by commas, to the `say` routine:

```raku
say 'Hello, ', $name, '!';
```

In that version, `say` received several separate arguments and printed them one after the other. Here, we build one finished string ourselves.

{% include nav.html %}
