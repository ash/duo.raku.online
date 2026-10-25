---
title: 'Solvo: Presi la averton'
---

{% include menu.html %}

## Kodo

Jen la solvo:

```raku
my $age = prompt 'What is your age? ';

if $age < 0 {
    note 'You entered a negative number!';
}
else {
    say "Your age is $age";
}
```

🦋 Trovu la programon en la dosiero [print-the-warning.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/built-in-functions-for-printing/print-the-warning.raku).

## Eligo

Jen du ekzemploj:

```console
$ raku exercises/built-in-functions-for-printing/print-the-warning.raku 
What is your age? 20
Your age is 20

$ raku exercises/built-in-functions-for-printing/print-the-warning.raku 
What is your age? -1
You entered a negative number!
```

Ĉu la mesaĝo vere iras al `STDERR`? Por kontroli tion, redirektu la eligon. Tiam vi ne vidas la demandon pri via aĝo. Sed vi ankoraŭ povas enigi nombron. Kaj vi ankoraŭ vidas la averton.

```console
$ raku exercises/built-in-functions-for-printing/print-the-warning.raku > /dev/null
20

$ raku exercises/built-in-functions-for-printing/print-the-warning.raku > /dev/null 
-1
You entered a negative number!
```

{% include nav.html %}
