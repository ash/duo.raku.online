---
title: Input with prompt
---

{% include menu.html %}

The opposite of `say` is `prompt`. It waits until the user types something and presses Enter. Then it sends the input to the program as a string. You can take the result of `prompt` and pass it to `say`. Then the program prints back what the user types. Let us write such a program:

```raku
say prompt;
```

If you run this program, it may confuse you. The program only waits for some input. So it is good to print a prompt message for the user. This makes the program more user-friendly. You don’t need a separate `say` for this. Just pass the message to `prompt`:

```raku
prompt 'What language are you going to learn? '
```

Before we finish this section, let us put all the pieces together. We will create a program that asks what the user wants. Then it prints a phrase with the text that the user entered.

```raku
say 'You are going to learn ', prompt 'What language are you going to learn? ';
```

If you entered `Raku`, the program prints the following phrase:

    You are going to learn Raku

OK, we can talk to the program now. And we can make it talk to us!

Note that `say` needs to know the strings before it prints them. So Raku runs `prompt` first. This keeps the dialogue in the correct order:

```console
$ raku t.raku 
What language are you going to learn? Raku
You are going to learn Raku
```

{% include nav.html %}
