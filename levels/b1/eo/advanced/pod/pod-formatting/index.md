---
title: Formatado kaj kodo
translations_gpt:
---

{% include menu.html %}

Ene de Pod-teksto vi markas vortojn per unuliteraj _formataj kodoj_. Vi skribas la literon kaj poste angulajn krampojn ĉirkaŭ la teksto:

* `B<…>` — grasa
* `I<…>` — kursiva
* `C<…>` — kodo (kun ĉiuj literoj de la sama larĝo)
* `L<…>` — ligilo

```raku
=begin pod

This is B<important>, and C<say> is a built-in.

=end pod
```

Post bildigo, `important` aperas grase kaj `say` en koda tiparo. Oni povas meti kodojn unu en la alian kaj kombini ilin, do `B<C<say>>` estas grasa kodo.

Foje vi bezonas tutan blokon de kodo, ne nur pecon en linio. Tiam uzu kodblokon kun klaraj komenca kaj fina linioj, `=begin code … =end code`. Ĝi konservas la tekston ekzakte kiel skribita:

```raku
=begin pod

Here is how to call it:

=begin code
say greet('world');
=end code

=end pod
```

La linioj ene de la kodbloko aperas ekzakte kiel skribitaj. Ili ne estas legataj kiel Pod. Kun entekstaj kodoj kaj kodblokoj kune, Pod povas dokumenti API-on. Ĝi povas havi formatitan tekston kaj ekzemplojn, kiuj aspektas kiel vera, funkcianta kodo. Ĉio ĉi restas apud la kodo, kiun ĝi priskribas.

{% include nav.html %}
