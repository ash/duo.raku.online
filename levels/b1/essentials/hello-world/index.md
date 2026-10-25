---
title: Hello, World! in Raku
---

{% include menu.html %}

Great, we have learnt the basics. Now we can talk to Raku and see its answer. So let’s go straight to the first real program, ‘Hello, World!’.

```raku
say 'Hello, World!';
```

Soon we will learn the basics of functions. But first, let us look at a few different options for this program.

First of all, you can put the function argument in parentheses:

```raku
say('Hello, World!');
```

Second, you can use two other functions, `put` and `print`. Again, you can write them with or without parentheses:

```raku
put 'Hello, World!';

print("Hello, World!\n");
```

Note that with `print`, you must add the newline character yourself. It goes at the end of the message. But don’t worry, we will cover all these details later.

Before we move on, here is one more exciting option. You can call a function as a method, directly on the string:

```raku
'Hello, World!'.say;
```

{% include nav.html %}
