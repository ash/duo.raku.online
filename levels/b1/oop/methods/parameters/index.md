---
title: Methods with parameters
---

{% include menu.html %}

Like a subroutine, a method can take parameters. You put them in parentheses after the name of the method:

```raku
class Account {
    has $.balance is rw = 0;

    method deposit($amount) {
        $.balance += $amount;
    }
}
```

The `deposit` method takes one parameter, `$amount`. It adds this amount to the object’s balance:

```raku
my $a = Account.new;
$a.deposit(100);
$a.deposit(50);
say $a.balance; # 150
```

Each call works on the object it was called on. So the same method can update different objects separately. Methods can have positional and named parameters and default values. In fact, they can use everything that you have already seen in subroutine signatures.

{% include nav.html %}
