---
title: Hello, World! in Raku
---

{% include menu.html %}

Great! Now we know the basic things. We can talk to Raku and see its answer. So let’s go to the first real program: ‘Hello, World!’.

```raku
say 'Hello, World!';
```

Soon we learn the basics of functions. But first, here are some other ways to write this program.

First, you can put the function argument in parentheses:

```raku
say('Hello, World!');
```

Second, you can use other functions: `put` and `print`. Again, you can write them with or without parentheses:

```raku
put 'Hello, World!';

print("Hello, World!\n");
```

With `print`, you must add the newline character yourself. This character starts a new line. Put it at the end of the message. But do not worry. We look at all these details later.

Before we go on, here is one more exciting way. You can call the function as a method. Call it directly on the string:

```raku
'Hello, World!'.say;
```

{% include nav.html %}
