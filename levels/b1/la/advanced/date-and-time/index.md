---
title: Dies et tempus
---

{% include menu.html %}

Raku typos integratos habet pro diebus calendarii et temporibus horologii. Dies calendarii typum `Date` habet. Ut unum crees, annum, mensem et diem das:

```raku
my $d = Date.new(2026, 6, 27);
say $d; # 2026-06-27
```

Cum diem habes, partes eius legere potes:

```raku
my $d = Date.new(2026, 6, 27);
say $d.year;  # 2026
say $d.month; # 6
say $d.day;   # 27
```

Methodus `day-of-week` tibi dicit in quem diem hebdomadis dies cadat. Numerum dat ab `1` pro die Lunae ad `7` pro die Solis:

```raku
say Date.new(2026, 6, 27).day-of-week; # 6
```

Dies 27 Iunii 2026 est dies Saturni, itaque eventus est `6`.

Methodus `is-leap-year` probat num annus diei sit annus bisextilis:

```raku
say Date.new(2024, 1, 1).is-leap-year; # True
say Date.new(2026, 1, 1).is-leap-year; # False
```

Voca `Date.today` ut diem hodiernum accipias. Exitus eius hic non monstratur. Pendet a die quo programma curris.

{% include nav.html %}
