---
title: Използване на `repeat`
---

{% include menu.html %}

Цикъл `while` или `until` може изобщо да не се изпълни. Това става, когато условието е `False` в началото. Блокът `repeat` е различен. Той винаги се изпълнява поне веднъж. Raku проверява условието след блока. За проверката използвате същите думи: `while` или `until`.

Вижте тази програма.

```raku
my $x = 100;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} while $x <= 10;
say "$x is bigger than 10.";
```

В началото променливата `$x` е `100`. Условието `while` проверява дали `$x` е `10` или по-малко. Значи условието вече е `False`. Но блокът от код все пак се изпълнява веднъж.

```console
$ raku t.raku
Enter a number: 10
You entered 10.
Enter a number: 20
You entered 20.
20 is bigger than 10.
```

Сега нека напишем програмата с `until`.

```raku
my $x = 0;
repeat {
    $x = prompt 'Enter a number: ';
    say "You entered $x.";
} until $x > 10;
say "$x is bigger than 10.";
```

Стартирайте я и проверете резултата:

```console
$ raku t.raku
Enter a number: 5
You entered 5.
Enter a number: 15
You entered 15.
15 is bigger than 10.
```

{% include nav.html %}
