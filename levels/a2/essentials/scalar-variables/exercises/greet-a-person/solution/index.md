---
title: The solution of ’Greet a person‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my $name = prompt 'What is your name? ';
say 'Hello, ', $name, '!';
```

🦋 You can find the source code in the file [greet-a-person.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/greet-a-person.raku).

## Output

Run the program. It asks for your name. Enter a name:

```console
$ raku exercises/scalar-variables/greet-a-person.raku 
What is your name? Inge
Hello, Inge!
```

## Comments

1. The program asks for a name. The user enters a string. The scalar variable `$name` keeps this string. Then the program gives a list of values to `say`. The variable is part of this list. So the name appears in the message.

1. There is a better way to solve this problem. It uses string interpolation. We come back to this problem soon.

{% include nav.html %}
