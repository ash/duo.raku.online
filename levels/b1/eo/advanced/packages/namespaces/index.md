---
title: Nomspacoj kaj our
translations_gpt:
---

{% include menu.html %}

La deklaracio `our` estas tio, kio faras nomon videbla en ĝia nomspaco. Variablo deklarita per `my` estas leksika, kio signifas, ke ĝi estas privata en sia bloko. Variablo deklarita per `our` estas ankaŭ paka variablo. Vi povas atingi ĝin de ekstere per la vojo `::`:

```raku
module Counter {
    our $count = 0;  # paka variablo
    my  $secret = 42; # leksika, ne videbla ekstere
}

say $Counter::count; # 0
```

`$Counter::count` funkcias, ĉar `count` estis deklarita per `our`. Sed `$Counter::secret` malsukcesus, ĉar `secret` estas leksika.

Nomspacoj povas **nestiĝi**, tio estas, unu povas esti en alia. Pako en pako donas pli longan vojon `::`:

```raku
module Outer {
    module Inner {
        our $val = 42;
    }
}

say $Outer::Inner::val; # 42
```

La plena nomo `$Outer::Inner::val` kondukas de la ekstera nomspaco en la internan. De tie, ĝi kondukas al la variablo. Ĝuste tiel la norma biblioteko estas organizita: nomoj kiel `IO::Socket::INET` estas nestitaj nomspacoj. Ankaŭ viaj propraj moduloj tiel grupigas siajn partojn sub unu supra nomo.

{% include nav.html %}
