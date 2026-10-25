---
title: Использование `elsif`
---

{% include menu.html %}

Пока мы познакомились с `if` и `else`. Но что, если вы хотите сделать цепочку проверок? В Raku есть как минимум два способа это сделать. На самом деле их даже больше.

Один из способов — использовать цепочку блоков `if`, `elsif` и `else`. Обратите внимание, как пишется `elsif`. Это не `elseif` и не `else if`.

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

В этой программе три ветки и три проверки, одна за другой. Как только одно из условий равно `True`, выполняется блок кода этого условия. Если ни одна проверка не равна `True`, выполняется блок `else`.

Вот несколько тестовых запусков программы. Каждый блок выполняется в одном из них:

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

Другой способ — использовать пару [`given` и `when`](/ru/advanced/given-when), которую мы изучим позже.

{% assign human=1 %}
{% include nav.html %}
