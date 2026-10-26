---
title: Tvigili
translations_gpt:
---

{% include menu.html %}

_Tvigils_ ir rakstzīme starp sigilu un mainīgā nosaukumu. Tā nemaina nosaukumu. Tā vietā tā maina to, kā mainīgais uzvedas un kā Raku to atrod. Šie ir biežākie:

* `*` — **dinamisks** mainīgais, piemēram, `$*OUT`, ko Raku meklē caur izsaukumu steku
* `?` — **kompilēšanas laika** vērtība, ko dod kompilators, piemēram, `$?FILE` vai `$?LINE`
* `!` — objekta **privāts** atribūts, piemēram, `$!balance`
* `.` — atribūts, ko jūs sasniedzat caur tā piekļuves metodi, piemēram, `$.name`

Jūs jau esat redzējuši vairākus no tiem, bet mēs tos nesaucām par tvigiliem. Tie ir dinamiskie `$*OUT` un `$*IN`, kā arī `$!`/`$.` no [daļas par objektiem](/lv/oop).

Kompilators aizpilda `?` mainīgos, kamēr kompilē jūsu programmu:

```raku
say $?LINE; # the line number of this statement
say $?FILE; # the path of this source file
```

Katrs tvigils uzreiz parāda citu mainīgā veidu. Kad jūs lasāt `$*foo`, jūs uzreiz zināt, ka tas ir dinamisks. Un `$?foo` ir kompilēšanas laika konstante. Nākamais temats sīkāk aplūko [dinamiskos mainīgos](/lv/advanced/special-variables/dynamic-variables). Tie uzvedas diezgan citādi nekā leksiskie mainīgie, ko jūs līdz šim esat lietojuši.

{% include nav.html %}
