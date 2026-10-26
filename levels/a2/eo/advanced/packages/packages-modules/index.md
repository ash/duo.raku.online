---
title: Pakoj kaj moduloj
translations_gpt:
---

{% include menu.html %}

La ŝlosilvorto `package` kreas nomspacon. En ĝi, vi povas krei aferojn per `our`. Ili fariĝas parto de la nomspaco. Vi povas atingi ilin de ekstere. Uzu la nomon de la pako kaj la apartigilon `::`:

```raku
package Maths {
    our $pi = 3.14;
    our sub double($x) { $x * 2 }
}

say $Maths::pi;         # 3.14
say Maths::double(5);   # 10
```

Vi atingas la variablon kiel `$Maths::pi`. Unue venas la sigelo, poste la nomo de la pako, poste la nomo de la variablo. Vi vokas subrutinon kiel `Maths::double(...)`.

Kaj `package` kaj `module` kreas nomspacon. Sed ili ankaŭ faras malsamajn aferojn. `module` estas la kutima elekto por kodo, kiun vi uzas denove. Simpla `package` estas nur la nomspaco, kun nenio plia. Ankaŭ `class` kreas nomspacon. Vi lernas pri klasoj en [la sekva parto](/eo/oop). Klaso ankaŭ aldonas la ilojn por objektoj.

```raku
module Greet {
    our sub hello { 'hi' }
}

say Greet::hello; # hi
```

Do `module` donas al vi nomspacon. `package` sola donas al vi la saman specon de nomspaco. Elektu inter ili laŭ tio, kion vi volas fari. Uzu `module` por bibliotekoj. Uzu `package` por nur nomspaco. Poste, kun objektoj, uzu `class` por tipoj.

{% include nav.html %}
