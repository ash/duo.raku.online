---
title: Direktorijas satura uzskaitīšana
translations_gpt:
---

{% include menu.html %}

Rutīna `dir` atgriež direktorijas ierakstus. Ieraksts ir fails vai direktorija tās iekšā. Katrs ieraksts ir ceļa objekts. Ierakstu secība nav noteikta. Tāpēc programmētāji bieži sakārto rezultātu. Tad izvade vienmēr ir tādā pašā secībā.

```raku
mkdir 'box';
spurt 'box/a.txt', '';
spurt 'box/b.txt', '';

for dir('box').sort -> $entry {
    say $entry.basename;
}
```

Šī programma izdrukā failu nosaukumus direktorijā `box`. Nosaukumi ir sakārtoti:

```
a.txt
b.txt
```

Katrs ieraksts ir pilns ceļa objekts. Metode `basename` dod tikai nosaukumu ceļa beigās. Tā nedod direktorijas daļu. Ceļa objektam jūs varat uzdot visus tos pašus jautājumus kā iepriekš: `.f`, `.d`, `.e`. Tāpēc jūs varat, piemēram, paņemt no direktorijas tikai failus.

{% include nav.html %}
