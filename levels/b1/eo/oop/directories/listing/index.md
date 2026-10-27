---
title: Listigi dosierujon
translations_gpt:
---

{% include menu.html %}

La rutino `dir` redonas la erojn de dosierujo, ĉiun kiel vojobjekton. Ilia ordo ne estas fiksita. Do oni ofte ordigas la rezulton, kaj tiam la eligo ĉiam havas la saman ordon.

```raku
mkdir 'box';
spurt 'box/a.txt', '';
spurt 'box/b.txt', '';

for dir('box').sort -> $entry {
    say $entry.basename;
}
```

La programo presas la ordigitajn nomojn de la dosieroj en la dosierujo `box`:

```
a.txt
b.txt
```

Ĉiu ero estas plena vojobjekto. La metodo `basename` donas nur la finan nomon, sen la parto de la dosierujo. Vi povas fari al vojobjekto ĉiujn samajn demandojn kiel antaŭe: `.f`, `.d` kaj `.e`. Do vi povas, ekzemple, trairi dosierujon kaj elekti nur la dosierojn.

{% include nav.html %}
