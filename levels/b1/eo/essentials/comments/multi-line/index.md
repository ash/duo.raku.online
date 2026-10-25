---
title: Plurliniaj komentoj
---

{% include menu.html %}

Se via komento estas pli longa ol unu linio, vi havas elekton. Vi povas skribi kelkajn unuliniajn komentojn aŭ unu plurlinian komenton.

Plurliniaj komentoj komenciĝas per du karakteroj: ``#` ``. Post ili venas paro de malfermaj kaj fermaj karakteroj: `( )`, `{ }`, `[ ]` aŭ `< >`. Vi ankaŭ povas ripeti ilin, ekzemple, `(( ))`, `[[[ ]]]` kaj tiel plu.

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
