---
title: Mašīnas līmeņa tipi
---

{% include menu.html %}

Natīvo tipu nosaukumi ir rakstīti ar mazajiem burtiem: `int`, `num` un `str`. Jūs tos izmantojat, lai deklarētu mainīgo, tāpat kā `Int` vai `Str`:

```raku
my int $i = 42;
my num $n = 3.14e0;
say $i; # 42
say $n; # 3.14
```

Natīvā vērtība tieši atbilst mašīnas reģistram vai vārdam. Tai nav iesaiņojuma objekta, kāds vienmēr ir parastai Raku vērtībai. Tāpēc natīvie tipi ir ātrāki un aizņem mazāk atmiņas. Tas ir svarīgi īsās cilpās, kas veic daudz aprēķinu, un lielos masīvos.

Vienu lietu jums vajadzētu zināt uzreiz: natīvais mainīgais nekad nevar būt nedefinēts. Parasts `Int` mainīgais sākas kā nedefinēts `(Int)`. Turpretī natīvais `int` sākas ar **nulli**:

```raku
say (my Int $a); # (Int)
say (my int $b); # 0
```

Tas pats attiecas uz natīvajiem masīviem. Jūs tos deklarējat, liekot natīvo tipu pirms `@` mainīgā:

```raku
my int @numbers = 10, 20, 30;
say @numbers.sum; # 60
```

Šāds masīvs glabā savus elementus kā neapstrādātus mašīnas veselos skaitļus, nevis kā iesaiņotus `Int` objektus. Tāpēc tas aizņem mazāk atmiņas. Kad jūs jautājat kaut ko par natīvo vērtību, Raku to automātiski _iesaiņo_. Tas ieliek vērtību atbilstošajā pilnajā tipā. Tāpēc `(my int $b).WHAT` parāda `(Int)`.

{% include nav.html %}
