---
title: Métodos con parámetros
translations_gpt:
---

{% include menu.html %}

Como una subrutina, un método puede recibir parámetros. Los pones entre paréntesis después del nombre del método:

```raku
class Account {
    has $.balance is rw = 0;

    method deposit($amount) {
        $.balance += $amount;
    }
}
```

El método `deposit` recibe un parámetro, `$amount`. Suma esta cantidad al saldo del objeto:

```raku
my $a = Account.new;
$a.deposit(100);
$a.deposit(50);
say $a.balance; # 150
```

Cada llamada trabaja con el objeto sobre el que se hizo. Así el mismo método puede actualizar objetos distintos por separado. Los métodos pueden tener parámetros posicionales y con nombre, y valores por defecto. De hecho, pueden usar todo lo que ya has visto en las firmas de las subrutinas.

{% include nav.html %}
