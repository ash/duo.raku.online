---
title: Getypte variabelen
---

{% include menu.html %}

In Raku bevat een scalaire variabele (of een scalaire container) één object. Dit object kan van verschillende typen zijn. Dezelfde variabele kan bijvoorbeeld eerst een getal bevatten en daarna een string:

```raku
my $var = 42;
$var = 'Hallo';
```

Hier is nog een voorbeeld, dat verschillende datatypen in één expressie mengt:

```raku
my $a = '100';
my $b = 200;
say $a + $b; # 300
```

Dit is waarschijnlijk niet de beste manier van programmeren. Maar het is een volkomen correct Raku-programma.

Toch laat Raku je kiezen wat een variabele mag bevatten. Meer details vind je in de onderwerpen hieronder.

{% include nav.html %}
