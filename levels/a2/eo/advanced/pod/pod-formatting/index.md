---
title: Formatado kaj kodo
translations_gpt:
---

{% include menu.html %}

En Pod-teksto vi markas vortojn per _formataj kodoj_. Ĉiu kodo estas unu litero. Post la litero vi metas angulajn krampojn ĉirkaŭ la teksto:

* `B<…>` — grasa
* `I<…>` — kursiva
* `C<…>` — kodo (ĉiuj literoj havas la saman larĝon)
* `L<…>` — ligilo

```raku
=begin pod

This is B<important>, and C<say> is a built-in.

=end pod
```

En la formatita teksto, `important` estas grasa. `say` estas en koda tiparo. Vi povas meti unu kodon en alian kodon. Tiel vi kombinas ilin. Do `B<C<say>>` estas grasa kodo.

Foje vi bezonas tutan blokon de kodo. Mallonga peco en linio ne sufiĉas. Tiam uzu kodblokon: `=begin code … =end code`. Ĝi havas linion ĉe la komenco kaj linion ĉe la fino. Ĝi konservas la tekston ekzakte kiel ĝi estas:

```raku
=begin pod

Here is how to call it:

=begin code
say greet('world');
=end code

=end pod
```

La linioj en la kodbloko aperas ekzakte kiel vi skribas ilin. Raku ne legas ilin kiel Pod. Do Pod havas kodojn en linioj, kaj ĝi havas kodblokojn. Per ili vi povas priskribi API-on. API estas la maniero, kiel aliaj programoj uzas vian kodon. Vi skribas formatitan tekston kaj ekzemplojn. La ekzemploj aspektas kiel kodo, kiun vi povas ruli. Ĉio restas apud la kodo, kiun ĝi priskribas.

{% include nav.html %}
