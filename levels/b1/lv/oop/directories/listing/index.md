---
title: Direktorijas satura uzskaitīšana
translations_gpt:
---

{% include menu.html %}

Rutīna `dir` atgriež direktorijas ierakstus, katru kā ceļa objektu. To secība nav noteikta. Tāpēc rezultātu bieži sakārto, un tad izvadei vienmēr ir tā pati secība.

```raku
mkdir 'box';
spurt 'box/a.txt', '';
spurt 'box/b.txt', '';

for dir('box').sort -> $entry {
    say $entry.basename;
}
```

Programma izdrukā direktorijā `box` esošo failu sakārtotos nosaukumus:

```
a.txt
b.txt
```

Katrs ieraksts ir pilns ceļa objekts. Metode `basename` dod tikai pēdējo nosaukumu, bez direktorijas daļas. Ceļa objektam var uzdot visus tos pašus jautājumus kā iepriekš: `.f`, `.d` un `.e`. Tāpēc jūs varat, piemēram, iet cauri direktorijai un izvēlēties tikai failus.

{% include nav.html %}
