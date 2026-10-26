---
title: Konteineru introspekcija
translations_gpt:
---

{% include menu.html %}

_Introspekcija_ nozīmē jautāt vērtībai vai konteineram par sevi. Jūs varat jautāt par tā tipu, par konteineru aiz tā vai par to, kā tas darbojas iekšienē. Jūs jau esat izmantojuši vienu introspekcijas rīku, `.^name`, kas izdrukā vērtības tipu.

Raku ir neliela šādu rīku saime, un to nosaukumi ir rakstīti ar lielajiem burtiem: `WHAT`, `VAR`, `WHO` un `HOW`. Tos dažreiz sauc par _pseidometodēm_. Tas ir tāpēc, ka kompilators tiem dod īpašu nozīmi. Tas neuzskata tos par parastām metodēm. Šī sadaļa aplūko katru no tiem.

Atgādinājumam šeit atkal ir `.^name`. Šim konteineram nav tipa ierobežojuma, un mēs tajā glabājam dažādas vērtības. `.^name` parāda, kā mainās tā tips:

```raku
my $value;
say $value.^name; # Any

$value = 42;
say $value.^name; # Int

$value = 'forty-two';
say $value.^name; # Str
```

Sākumā konteineris ir `Any`. Pēc tam tas rāda tās vērtības tipu, kuru tas pašlaik satur.

{% include nav.html %}
