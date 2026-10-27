---
title: 'Quiz — `try`'
translations_gpt:
---

{% include menu.html %}

Wat drukt dit programma af?

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

Er gebeuren hier twee dingen. Ten eerste stopt `die` meteen de rest van het `try`-blok. Dus komt het programma nooit bij de regel `say 'inside'`. Het programma drukt niets van binnen het blok af. Ten tweede vangt `try` de exceptie, de fout van `die`. Dus stopt het programma zelf niet. Het gaat verder na het blok. `say 'outside'` draait gewoon. Dus drukt het programma maar één regel af: `outside`. Je kunt ook naar `$r` en `$!` kijken. `$r` is ongedefinieerd. De melding `Boom!` wacht in `$!`.

</div>

{% include nav.html %}
