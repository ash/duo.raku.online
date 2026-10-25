---
title: Използване на `elsif`
---

{% include menu.html %}

Досега научихме `if` и `else`. Но какво да направите, ако искате верига от тестове? Raku има поне два начина да направите това. Всъщност има дори повече.

Един начин е да използвате верига от блокове `if`, `elsif` и `else`. Обърнете внимание как се пише `elsif`. Това не е `elseif` и не е `else if`.

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

Тази програма има три клона и три теста, един след друг. Щом едно от условията е `True`, съответният блок код се изпълнява. Ако нито една проверка не е `True`, се изпълнява блокът `else`.

Ето няколко тестови изпълнения на програмата. Всеки блок се изпълнява в едно от тях:

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

Друг начин е да използвате двойката [`given` и `when`](/bg/advanced/given-when), която ще научим по-късно.

{% include nav.html %}
