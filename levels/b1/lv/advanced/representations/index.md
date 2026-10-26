---
title: Vērtību pārvēršana tekstā
---

{% include menu.html %}

Kad programma parāda vērtību, tai šī vērtība jāpārvērš tekstā. Tas notiek, kad jūs vērtību izvadāt ar `say`, izdrukājat vai ievietojat virknē. Raku nav tikai viena fiksēta veida, kā to darīt. Tā vietā katrai vērtībai ir dažas standarta metodes. Katra no tām izveido virkni citam mērķim:

* `.gist` — forma, ko cilvēkiem ir viegli lasīt. Tieši to izdrukā `say`.
* `.Str` — vienkārša virknes forma vietām, kur Raku vajag virkni.
* `.raku` — kodam līdzīga forma, kas noder, kad jūs atkļūdojat.

Visas trīs ir parastas metodes, kas ir katrai vērtībai Raku valodā. Tāpēc tās darbojas vienādi ar skaitļiem, virknēm, masīviem un jūsu pašu objektiem. Nākamās lappuses aplūko katru metodi pa vienai. Tad tās palīdz jums izvēlēties pareizo. [Nākamā sadaļa iepazīstina ar `dd`](/lv/advanced/dd) — Rakudo rīku, kura pamatā ir `.raku`.

{% include nav.html %}
