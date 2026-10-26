---
title: Quiz — Dynamische variabelen
---

{% include menu.html %}

Wat print dit programma?

```raku
my $*n = 1;
sub show { say $*n }

sub run {
    my $*n = 2;
    show();
}

run();
```

{:.quiz}
0 | 1
1 | 2
0 | Nothing
0 | An error

{% include quiz.html %}

<div class="extended-explanation">

`show` staat op het bovenste niveau. Hij staat direct naast `my $*n = 1`. Maar die plek doet er niet toe. Raku zoekt een dynamische variabele via de *call stack*. Het kijkt niet naar waar de code staat. Hier roept `run` de subroutine `show` aan. En `run` declareert `$*n` opnieuw als `2`. Dus geldt deze waarde, en het programma print `2`.

</div>

{% include nav.html %}
