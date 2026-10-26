---
title: Laborando cum tempore
---

{% include menu.html %}

Si et diem et tempus diei requiris, typum `DateTime` adhibe. Eum fere ut `Date` creas. Sed etiam horam, minutum et secundum das:

```raku
my $dt = DateTime.new(2026, 6, 27, 14, 30, 0);
say $dt; # 2026-06-27T14:30:00Z
```

Forma textus praedefinita normam ISO 8601 sequitur. Diem, litteram `T` et tempus habet. In fine `Z` zonam temporis UTC significat.

`DateTime` partes diei habet quas iam cognoscis. Etiam tibi permittit partes temporis legere:

```raku
my $dt = DateTime.new(2026, 6, 27, 14, 30, 0);
say $dt.hour;   # 14
say $dt.minute; # 30
```

Ut momentum praesens accipias, voca `DateTime.now`. Exitus eius hic non monstratur, sicut pro `Date.today`. Mutatur quotiens programma curris.

{% include nav.html %}
