---
title: Methodi cum parametris
translations_gpt:
---

{% include menu.html %}

Methodus parametros habere potest, sicut subprogramma. Scribe eos in parenthesibus post nomen methodi:

```raku
class Account {
    has $.balance is rw = 0;

    method deposit($amount) {
        $.balance += $amount;
    }
}
```

Methodus `deposit` unum parametrum habet, `$amount`. Hanc summam ad rationem obiecti addit:

```raku
my $a = Account.new;
$a.deposit(100);
$a.deposit(50);
say $a.balance; # 150
```

Quaeque vocatio in uno obiecto operatur. Est obiectum in quo methodum vocas. Itaque una methodus diversa obiecta mutare potest. Unum obiectum alia non mutat. Methodi parametros positionales et nominatos habere possunt. Etiam valores praedefinitos habere possunt. Omnia cetera ex signaturis subprogrammatum hic quoque operantur.

{% include nav.html %}
