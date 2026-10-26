---
title: Konteineru introspekcija
translations_gpt:
---

{% include menu.html %}

_Introspekcija_ nozīmē jautāt vērtībai vai konteineram par sevi. Jūs varat jautāt par tā tipu. Jūs varat jautāt par konteineru aiz tā. Jūs varat arī jautāt, kā Raku liek tam darboties iekšienē. Jūs jau zināt vienu introspekcijas rīku, `.^name`. Tas izdrukā vērtības tipu.

Raku ir neliela šādu rīku grupa. To nosaukumi ir rakstīti ar lielajiem burtiem: `WHAT`, `VAR`, `WHO` un `HOW`. Cilvēki dažreiz tos sauc par _pseidometodēm_. Tie izskatās kā metodes. Bet tie nav parastas metodes. Kompilators tiem dod īpašu nozīmi. Šī sadaļa aplūko katru no tiem.

Šeit ir atgādinājums par `.^name`. Konteineram šajā kodā nav noteikta tipa. Mēs tajā glabājam dažādas vērtības. `.^name` parāda, kā tips mainās:

```raku
my $value;
say $value.^name; # Any

$value = 42;
say $value.^name; # Int

$value = 'forty-two';
say $value.^name; # Str
```

Sākumā konteineris ir `Any`. Pēc tam tas rāda savas pašreizējās vērtības tipu.

{% include nav.html %}
