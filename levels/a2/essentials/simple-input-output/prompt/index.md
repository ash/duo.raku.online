---
title: Input with prompt
---

{% include menu.html %}

`prompt` is the opposite of `say`. It waits for the user. The user types something and presses Enter. Then `prompt` sends the input to the program as a string. You can take the result of `prompt` and give it to `say`. Then the program repeats what the user types. Let’s write such a program:

```raku
say prompt;
```

Run this program. You may not understand what is happening. The program only waits for some input. So it is good to print a message first. Then the program is easier to use. You do not need a separate `say` for this. You can give the message to `prompt`:

```raku
prompt 'What language are you going to learn? '
```

This section ends soon. But first, let’s put all the pieces together. The new program asks what the user wants. Then it prints a phrase with the text from the user.

```raku
say 'You are going to learn ', prompt 'What language are you going to learn? ';
```

If you enter `Raku`, the program prints this phrase:

    You are going to learn Raku

OK, now we can talk to the program. And we can make the program talk to us!

Note that `say` must know the strings before it prints them. So Raku runs `prompt` first. This way, the dialogue goes in the right order:

```console
$ raku t.raku 
What language are you going to learn? Raku
You are going to learn Raku
```

{% include nav.html %}
