---
title: Plurliniaj komentoj
---

{% include menu.html %}

Foje komento estas pli longa ol unu linio. Tiam vi havas du elektojn. Vi povas skribi kelkajn unuliniajn komentojn. Aŭ vi povas skribi unu plurlinian komenton.

Plurlinia komento komenciĝas per du karakteroj: ``#` ``. Poste venas paro de krampoj: `( )`, `{ }`, `[ ]` aŭ `< >`. Vi ankaŭ povas ripeti ilin: `(( ))`, `[[[ ]]]` kaj tiel plu.

Ekzemple:

```raku
my $name;
#`( Ni petos la uzanton
enmeti sian nomon unue kaj poste
konservi la enigon en variablo. )

$name = prompt 'Kio estas via nomo? ';
#`{ La programo nun atendas
ĝis la uzanto enmetas la nomon
kaj premas Enter. }

say $name; #`( Kaj nun ni povas presi ĝin )
```

{% include nav.html %}
