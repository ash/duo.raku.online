---
title: Solution of ‘Examining the output of prompt — Strings’
---

{% include menu.html %}

## Code

Here is the full program. It does the job. It prints the string that you enter and its type.

```raku
my $name = prompt 'What is your name? ';
say $name;
say $name.WHAT;
```

🦋 You can find the source code in the file [prompt-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-strings.raku).

## Test runs

Run the program two or three times. Enter different names. The program prints your input again. It also tells you that the variable contains a string. In other words, it is an object of the `Str` type.

```console
$ raku exercises/data-types/prompt-strings.raku
What is your name? Andrey
Andrey
(Str)
```

Now run the program again. Type a few spaces instead of a name. Then press Enter.

```console
$ raku exercises/data-types/prompt-strings.raku
What is your name?    

(Str)
```

We do not see the output. But we see the type of the variable. It is still `Str`.

{% include nav.html %}
