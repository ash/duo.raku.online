---
title: The solution of ’Greet a person‘
---

{% include menu.html %}

Here is one possible solution to the task.

## Code

```raku
my $name = prompt 'What is your name? ';
say 'Hello, ', $name, '!';
```

🦋 You can find the source code in the file [greet-a-person.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/greet-a-person.raku).

## Output

Run the program and enter a name when you see the prompt:

```console
$ raku exercises/scalar-variables/greet-a-person.raku 
What is your name? Inge
Hello, Inge!
```

## Comments

1. After the prompt, the user enters a string. The program keeps this string in a scalar variable, `$name`. You use the variable in the list that you pass to the `say` routine. So the name appears in the message.

1. A better way to solve this problem is to use string interpolation. We will come back to it soon.

{% include nav.html %}
