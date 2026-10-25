---
title: Getypte variabelen
---

{% include menu.html %}

In Raku bevat een scalaire variabele, of scalaire container, één object. Dit object kan van verschillende typen zijn. Zo kan dezelfde variabele bijvoorbeeld eerst een getal bevatten. Daarna kan hij een string bevatten:

```raku
my $var = 42;
$var = 'Hallo';
```

Hier is nog een voorbeeld. Eén expressie bevat verschillende datatypen:

```raku
my $a = '100';
my $b = 200;
say $a + $b; # 300
```

Dit is waarschijnlijk geen goede manier om code te schrijven. Maar het is een helemaal correct Raku-programma.

Maar Raku laat je ook zeggen wat een variabele kan bevatten. De onderwerpen hieronder vertellen er meer over.

{% include nav.html %}
