---
title: Twigili
translations_gpt:
---

{% include menu.html %}

_Twigil_ est character inter sigillum et nomen variabilis. Nomen non mutat. Potius mutat quomodo variabilis se gerat et quomodo Raku eam inveniat. Haec sunt vulgaria:

* `*` — variabilis **dynamica**, ut `$*OUT`, quam Raku per acervum vocationum quaerit
* `?` — valor **temporis compilationis** quem compilator praebet, ut `$?FILE` vel `$?LINE`
* `!` — attributum **privatum** obiecti, ut `$!balance`
* `.` — attributum quod per methodum accessus attingis, ut `$.name`

Plura ex eis iam vidisti, sed ea twigilia non vocavimus. Haec sunt dynamica `$*OUT` et `$*IN`, et `$!`/`$.` ex [parte de obiectis](/la/oop).

Compilator variabiles `?` implet dum programma tuum compilat:

```raku
say $?LINE; # numerus lineae huius enuntiati
say $?FILE; # semita huius archivi fontis
```

Unumquodque twigil statim aliud genus variabilis ostendit. Cum `$*foo` legis, statim scis eam dynamicam esse. Et `$?foo` est constans temporis compilationis. Argumentum sequens [variabiles dynamicas](/la/advanced/special-variables/dynamic-variables) accurate inspicit. Multum aliter se gerunt quam variabiles lexicae quas adhuc adhibuisti.

{% include nav.html %}
