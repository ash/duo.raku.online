---
title: Vārdtelpas un our
translations_gpt:
---

{% include menu.html %}

Vārds `our` padara kaut ko redzamu tā vārdtelpā. Mainīgais ar `my` ir leksisks. Tas ir privāts savam blokam. Mainīgais ar `our` ir arī pakotnes mainīgais. Jūs varat tam piekļūt no ārpuses caur `::` ceļu:

```raku
module Counter {
    our $count = 0;  # package variable
    my  $secret = 42; # lexical, not visible outside
}

say $Counter::count; # 0
```

`$Counter::count` darbojas. Mainīgajam `count` ir `our`. Bet `$Counter::secret` nedarbojas. Mainīgais `secret` ir leksisks.

Vārdtelpas var būt **ligzdotas**. Tas nozīmē, ka viena vārdtelpa ir otras iekšienē. Pakotne pakotnes iekšienē veido garāku `::` ceļu:

```raku
module Outer {
    module Inner {
        our $val = 42;
    }
}

say $Outer::Inner::val; # 42
```

Pilnais nosaukums `$Outer::Inner::val` ir kā ceļš. Tas ved no ārējās vārdtelpas uz iekšējo. Tad tas ved līdz mainīgajam. Standarta bibliotēka izmanto tieši šādu uzbūvi. Tādi nosaukumi kā `IO::Socket::INET` ir ligzdotas vārdtelpas. Arī jūsu pašu moduļi var darboties šādi. Tie tur visas savas daļas zem viena augstākā līmeņa nosaukuma.

{% include nav.html %}
