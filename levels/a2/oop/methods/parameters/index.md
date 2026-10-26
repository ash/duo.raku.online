---
title: Methods with parameters
---

{% include menu.html %}

A method can have parameters, like a subroutine. Write them in round brackets after the name of the method:

```raku
class Account {
    has $.balance is rw = 0;

    method deposit($amount) {
        $.balance += $amount;
    }
}
```

The method `deposit` has one parameter, `$amount`. It adds this amount to the balance of the object:

```raku
my $a = Account.new;
$a.deposit(100);
$a.deposit(50);
say $a.balance; # 150
```

Each call works on one object. It is the object that you call the method on. So one method can change different objects. One object does not change the others. Methods can have positional and named parameters. They can have default values too. Everything else from subroutine signatures also works here.

{% include nav.html %}
