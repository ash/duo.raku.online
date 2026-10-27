---
title: 'Quiz — `try`'
translations_gpt:
---

{% include menu.html %}

Wat drukt het volgende programma af?

```raku
my $r = try {
    die 'Boom!';
    say 'inside';
};

say 'outside';
```

{:.quiz}
1 | outside
0 | inside
0 | inside en dan outside
0 | Boom!
0 | een fout

{% include quiz.html %}

<div class="extended-explanation">

Er gebeuren hier twee dingen. Ten eerste stopt `die` meteen de rest van het `try`-blok. Dus draait de regel `say 'inside'` nooit, en wordt er niets van binnen het blok afgedrukt. Ten tweede vangt `try` de exceptie, dus stopt het programma zelf niet. Het gaat verder na het blok, en `say 'outside'` draait gewoon. De enige afgedrukte regel is dus `outside`. Als je zou kijken, zou je zien dat `$r` ongedefinieerd is. De melding `Boom!` zou in `$!` klaarstaan.

</div>

{% include nav.html %}
