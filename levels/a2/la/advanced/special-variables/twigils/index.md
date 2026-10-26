---
title: Twigili
translations_gpt:
---

{% include menu.html %}

_Twigil_ est character. Inter sigillum et nomen variabilis stat. Nomen non mutat. Modum mutat quo variabilis operatur. Etiam modum mutat quo Raku eam invenit. Haec sunt twigilia vulgaria:

* `*` — variabilis **dynamica**, exempli gratia `$*OUT`; Raku eam per acervum vocationum invenit
* `?` — valor **temporis compilationis**; compilator eum ponit, exempli gratia `$?FILE` et `$?LINE`
* `!` — attributum **privatum** obiecti, exempli gratia `$!balance`
* `.` — attributum quod per methodum accessus adhibes, exempli gratia `$.name`

Quaedam ex eis iam nosti, sed sine nomine "twigil". `$*OUT` et `$*IN` dynamica sunt. Et `$!` et `$.` in [parte de obiectis](/la/oop) vidisti.

Compilator variabilibus `?` valores earum dat. Hoc facit cum programma tuum compilat:

```raku
say $?LINE; # numerus lineae huius enuntiati
say $?FILE; # semita huius archivi fontis
```

Unumquodque twigil aliud genus variabilis ostendit. Id statim vides. Cum `$*foo` legis, scis: dynamica est. Et `$?foo` est constans temporis compilationis. Argumentum sequens [variabiles dynamicas](/la/advanced/special-variables/dynamic-variables) propius inspicit. Multum aliter operantur quam variabiles lexicae quas nosti.

{% include nav.html %}
