---
title: Vārdtelpas un our
translations_gpt:
---

{% include menu.html %}

Tieši deklarators `our` padara nosaukumu redzamu tā vārdtelpā. Mainīgais, kas deklarēts ar `my`, ir leksisks, tas nozīmē, ka tas ir privāts savam blokam. Mainīgais, kas deklarēts ar `our`, ir arī pakotnes mainīgais. Jūs varat to sasniegt no ārpuses caur `::` ceļu:

```raku
module Counter {
    our $count = 0;  # package variable
    my  $secret = 42; # lexical, not visible outside
}

say $Counter::count; # 0
```

`$Counter::count` darbojas, jo `count` tika deklarēts ar `our`. Bet `$Counter::secret` nedarbotos, jo `secret` ir leksisks.

Vārdtelpas var būt **ligzdotas**, tas ir, viena var atrasties otras iekšienē. Pakotne pakotnes iekšienē dod garāku `::` ceļu:

```raku
module Outer {
    module Inner {
        our $val = 42;
    }
}

say $Outer::Inner::val; # 42
```

Pilnais nosaukums `$Outer::Inner::val` ved no ārējās vārdtelpas uz iekšējo. No turienes tas ved līdz mainīgajam. Tieši tā ir veidota standarta bibliotēka: tādi nosaukumi kā `IO::Socket::INET` ir ligzdotas vārdtelpas. Arī jūsu pašu moduļi šādi grupē savas daļas zem viena augstākā līmeņa nosaukuma.

{% include nav.html %}
