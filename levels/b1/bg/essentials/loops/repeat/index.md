---
title: Използване на `repeat`
---

{% include menu.html %}

Блок `while` или `until` може никога да не се изпълни, ако условието е `False` още в началото. Блокът `repeat`, от друга страна, винаги се изпълнява поне веднъж. Неговото условие се проверява след блока. За проверката използвате същите думи, `while` или `until`.

Погледнете тази програма.

```raku
my $x = 100;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} while $x <= 10;
say "$x is bigger than 10.";
```

Променливата `$x` започва от `100`. Условието `while` проверява дали `$x` е по-малко или равно на `10`. С тази стойност условието вече е `False`, но блокът все пак първо се изпълнява веднъж.

```console
$ raku t.raku
Enter a number: 10
You entered 10.
Enter a number: 20
You entered 20.
20 is bigger than 10.
```

Сега нека променим програмата, за да използва `until`.

```raku
my $x = 0;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} until $x > 10;
say "$x is bigger than 10.";
```

Стартирайте я, за да проверите, че работи така, както очаквате:

```console
$ raku t.raku
Enter a number: 5
You entered 5.
Enter a number: 15
You entered 15.
15 is bigger than 10.
```

{% include nav.html %}
