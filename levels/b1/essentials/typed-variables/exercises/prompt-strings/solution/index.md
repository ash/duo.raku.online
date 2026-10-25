---
title: Solution of ‘Examining the output of prompt — Strings’
---

{% include menu.html %}

## Code

Here is the complete program. It does the job and prints both the entered string and its type.

```raku
my $name = prompt 'What is your name? ';
say $name;
say $name.WHAT;
```

🦋 You can find the source code in the file [prompt-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-strings.raku).

## Test runs

Run the program a couple of times with different names. The program repeats the input. It also reports that the variable contains a string. In other words, it is an object of the `Str` type.

```console
$ raku exercises/data-types/prompt-strings.raku
What is your name? Andrey
Andrey
(Str)
```

Now run the program again. Type a few spaces instead of a name and press Enter.

```console
$ raku exercises/data-types/prompt-strings.raku
What is your name?    

(Str)
```

We do not see the output. But we can see that the variable still has the type `Str`.

{% include nav.html %}
