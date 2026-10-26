---
title: Métodos con parámetros
translations_gpt:
---

{% include menu.html %}

Un método puede tener parámetros, como una subrutina. Escríbelos entre paréntesis después del nombre del método:

```raku
class Account {
    has $.balance is rw = 0;

    method deposit($amount) {
        $.balance += $amount;
    }
}
```

El método `deposit` tiene un parámetro, `$amount`. Suma esta cantidad al saldo del objeto:

```raku
my $a = Account.new;
$a.deposit(100);
$a.deposit(50);
say $a.balance; # 150
```

Cada llamada trabaja con un objeto. Es el objeto sobre el que llamas al método. Así un método puede cambiar objetos distintos. Un objeto no cambia a los otros. Los métodos pueden tener parámetros posicionales y con nombre. También pueden tener valores por defecto. Todo lo demás de las firmas de las subrutinas también funciona aquí.

{% include nav.html %}
