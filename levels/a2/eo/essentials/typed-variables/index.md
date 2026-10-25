---
title: Tipitaj variabloj
---

{% include menu.html %}

En Raku, skalara variablo, aŭ skalara ujo, tenas unu objekton. Ĉi tiu objekto povas esti de malsamaj tipoj. Ekzemple, la sama variablo povas unue enhavi nombron. Poste ĝi povas enhavi ŝnuron:

```raku
my $var = 42;
$var = 'Hello';
```

Jen alia ekzemplo. Unu esprimo havas malsamajn datumtipojn en si:

```raku
my $a = '100';
my $b = 200;
say $a + $b; # 300
```

Ĉi tio verŝajne ne estas bona maniero skribi kodon. Sed ĝi estas tute ĝusta Raku-programo.

Sed Raku ankaŭ lasas vin diri, kion variablo povas teni. La temoj sube diras al vi pli.

{% include nav.html %}
