---
title: Използване на `repeat`
---

{% include menu.html %}

Понякога блок `while` или `until` изобщо не се изпълнява. Това става, когато условието е `False` в началото. Блокът `repeat` е различен: той винаги се изпълнява поне веднъж. Raku проверява условието след блока. За проверката използвате същите думи, `while` или `until`.

Вижте тази програма.

```raku
my $x = 100;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} while $x <= 10;
say "$x is bigger than 10.";
```

В началото променливата `$x` е `100`. Условието `while` проверява дали `$x` е по-малко или равно на `10`. С тази стойност условието вече е `False`. Но блокът с код все пак се изпълнява първо.

```console
$ raku t.raku
Enter a number: 10
You entered 10.
Enter a number: 20
You entered 20.
20 is bigger than 10.
```

Сега нека променим програмата и да използваме `until`.

```raku
my $x = 0;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} until $x > 10;
say "$x is bigger than 10.";
```

Стартирайте я и проверете, че работи:

```console
$ raku t.raku
Enter a number: 5
You entered 5.
Enter a number: 15
You entered 15.
15 is bigger than 10.
```

{% include nav.html %}
