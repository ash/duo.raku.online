---
title: Methodi cum parametris
translations_gpt:
---

{% include menu.html %}

Sicut subprogramma, methodus parametros accipere potest. Eos in parenthesibus post nomen methodi ponis:

```raku
class Account {
    has $.balance is rw = 0;

    method deposit($amount) {
        $.balance += $amount;
    }
}
```

Methodus `deposit` unum parametrum accipit, `$amount`. Hanc summam ad rationem obiecti addit:

```raku
my $a = Account.new;
$a.deposit(100);
$a.deposit(50);
say $a.balance; # 150
```

Quaeque vocatio in eo obiecto operatur in quo vocata est. Itaque eadem methodus diversa obiecta separatim renovare potest. Methodi parametros positionales et nominatos et valores praedefinitos habere possunt. Re vera omnibus uti possunt quae iam in signaturis subprogrammatum vidisti.

{% include nav.html %}
