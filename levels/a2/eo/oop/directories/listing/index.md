---
title: Listigi dosierujon
translations_gpt:
---

{% include menu.html %}

La rutino `dir` redonas la erojn de dosierujo. Ero estas dosiero aŭ dosierujo en ĝi. Ĉiu ero estas vojobjekto. La ordo de la eroj ne estas fiksita. Do oni ofte ordigas la rezulton. Tiam la eligo ĉiam venas en la sama ordo.

```raku
mkdir 'box';
spurt 'box/a.txt', '';
spurt 'box/b.txt', '';

for dir('box').sort -> $entry {
    say $entry.basename;
}
```

Ĉi tiu programo presas la nomojn de la dosieroj en la dosierujo `box`. La nomoj estas ordigitaj:

```
a.txt
b.txt
```

Ĉiu ero estas plena vojobjekto. La metodo `basename` donas nur la nomon ĉe la fino. Ĝi ne donas la parton de la dosierujo. Vi povas fari al vojobjekto ĉiujn samajn demandojn kiel antaŭe: `.f`, `.d`, `.e`. Do, ekzemple, vi povas preni nur la dosierojn el dosierujo.

{% include nav.html %}
