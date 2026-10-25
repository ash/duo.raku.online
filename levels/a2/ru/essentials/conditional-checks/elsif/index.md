---
title: Использование `elsif`
---

{% include menu.html %}

Теперь вы знаете `if` и `else`. Но что делать, если нужно много проверок, одна за другой? В Raku для этого есть как минимум два способа. На самом деле их даже больше.

Один способ — это цепочка блоков: `if`, `elsif` и `else`. Посмотрите, как мы пишем `elsif`. Это не `elseif`. И это также не `else if`.

```raku
my $x = prompt 'Enter the number: ';
if $x > 100 {
    say "$x is bigger than 100.";
}
elsif $x > 50 {
    say "$x is bigger than 50.";
}
elsif $x > 25 {
    say "$x is bigger than 25.";
}
else {
    say "$x is 25 or smaller.";
}
```

В этой программе три ветки. В ней три проверки, одна за другой. Как только одно условие равно `True`, Raku выполняет его блок кода. Если ни одна проверка не равна `True`, Raku выполняет блок `else`.

Вот несколько тестовых запусков программы. Вместе они используют все блоки:

```console
$ raku t.raku
Enter the number: 120
120 is bigger than 100.

$ raku t.raku
Enter the number: 75
75 is bigger than 50.

$ raku t.raku
Enter the number: 30
30 is bigger than 25.

$ raku t.raku
Enter the number: 10
10 is 25 or smaller.
```

Другой способ — это пара [`given` и `when`](/ru/advanced/given-when). Мы узнаем о ней позже.

{% assign human=1 %}
{% include nav.html %}
