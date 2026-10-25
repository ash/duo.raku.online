---
title: Използване на `elsif`
---

{% include menu.html %}

Сега знаете `if` и `else`. А ако ви трябват много тестове, един след друг? Raku има поне два начина за това. Всъщност има дори повече.

Един начин е верига от блокове: `if`, `elsif` и `else`. Вижте как пишем `elsif`. Това не е `elseif`. Това не е и `else if`.

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

Тази програма има три клона. Тя има три теста, един след друг. Щом едно условие е `True`, Raku изпълнява неговия блок код. Ако нито един тест не е `True`, Raku изпълнява блока `else`.

Ето няколко тестови изпълнения на програмата. Заедно те използват всички блокове:

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

Друг начин е двойката [`given` и `when`](/bg/advanced/given-when). Ще я научим по-късно.

{% include nav.html %}
