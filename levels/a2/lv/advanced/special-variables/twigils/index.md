---
title: Tvigili
translations_gpt:
---

{% include menu.html %}

_Tvigils_ ir rakstzīme. Tā stāv starp sigilu un mainīgā nosaukumu. Tā nemaina nosaukumu. Tā maina to, kā mainīgais darbojas. Tā maina arī to, kā Raku to atrod. Šie ir biežākie tvigili:

* `*` — **dinamisks** mainīgais, piemēram, `$*OUT`; Raku to atrod caur izsaukumu steku
* `?` — **kompilēšanas laika** vērtība; to iestata kompilators, piemēram, `$?FILE` un `$?LINE`
* `!` — objekta **privāts** atribūts, piemēram, `$!balance`
* `.` — atribūts, ko jūs izmantojat caur tā piekļuves metodi, piemēram, `$.name`

Jūs jau zināt dažus no tiem, bet bez nosaukuma "tvigils". `$*OUT` un `$*IN` ir dinamiski. Un `$!` un `$.` jūs redzējāt [daļā par objektiem](/lv/oop).

Kompilators dod `?` mainīgajiem to vērtības. Tas to dara, kad kompilē jūsu programmu:

```raku
say $?LINE; # the line number of this statement
say $?FILE; # the path of this source file
```

Katrs tvigils parāda citu mainīgā veidu. Jūs to redzat uzreiz. Kad jūs lasāt `$*foo`, jūs zināt, ka tas ir dinamisks. Un `$?foo` ir kompilēšanas laika konstante. Nākamais temats tuvāk aplūko [dinamiskos mainīgos](/lv/advanced/special-variables/dynamic-variables). Tie darbojas ļoti citādi nekā leksiskie mainīgie, ko jūs zināt.

{% include nav.html %}
