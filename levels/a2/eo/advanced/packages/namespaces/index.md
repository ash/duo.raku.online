---
title: Nomspacoj kaj our
translations_gpt:
---

{% include menu.html %}

La vorto `our` faras ion videbla en ĝia nomspaco. Variablo kun `my` estas leksika. Ĝi estas privata en sia bloko. Variablo kun `our` estas ankaŭ paka variablo. Vi povas atingi ĝin de ekstere per la vojo `::`:

```raku
module Counter {
    our $count = 0;  # paka variablo
    my  $secret = 42; # leksika, ne videbla ekstere
}

say $Counter::count; # 0
```

`$Counter::count` funkcias. La variablo `count` havas `our`. Sed `$Counter::secret` ne funkcias. La variablo `secret` estas leksika.

Nomspacoj povas **nestiĝi**. Tio signifas, ke unu nomspaco estas en alia. Pako en pako faras pli longan vojon `::`:

```raku
module Outer {
    module Inner {
        our $val = 42;
    }
}

say $Outer::Inner::val; # 42
```

La plena nomo `$Outer::Inner::val` estas kiel vojo. Ĝi iras de la ekstera nomspaco en la internan. Poste ĝi iras al la variablo. La norma biblioteko uzas ĝuste ĉi tiun strukturon. Nomoj kiel `IO::Socket::INET` estas nestitaj nomspacoj. Ankaŭ viaj propraj moduloj povas funkcii tiel. Ili tenas ĉiujn siajn partojn sub unu supra nomo.

{% include nav.html %}
