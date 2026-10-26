---
title: Dies et tempus
---

{% include menu.html %}

Raku typos pro diebus et temporibus habet. Hi typi pars linguae sunt. Dies in calendario typum `Date` habet. Ut diem facias, da annum, mensem, et diem:

```raku
my $d = Date.new(2026, 6, 27);
say $d; # 2026-06-27
```

Dies partes habet. Quamque partem legere potes:

```raku
my $d = Date.new(2026, 6, 27);
say $d.year;  # 2026
say $d.month; # 6
say $d.day;   # 27
```

Methodus `day-of-week` dat diem hebdomadis huius diei. Dies numeros habent. Dies Lunae est `1`, et dies Solis est `7`:

```raku
say Date.new(2026, 6, 27).day-of-week; # 6
```

Dies 27 Iunii 2026 est dies Saturni. Itaque eventus est `6`.

Annus bisextilis 366 dies habet. Methodus `is-leap-year` probat num dies in anno bisextili sit:

```raku
say Date.new(2024, 1, 1).is-leap-year; # True
say Date.new(2026, 1, 1).is-leap-year; # False
```

Pro die hodierno, voca `Date.today`. Exitum eius hic non monstramus. Exitus a die pendet quo programma curris.

{% include nav.html %}
