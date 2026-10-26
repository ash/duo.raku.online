---
title: Laborando cum tempore
---

{% include menu.html %}

Interdum diem et etiam tempus diei requiris. Tum typum `DateTime` adhibe. Eum fere ut `Date` facis. Sed etiam horam, minutum, et secundum das:

```raku
my $dt = DateTime.new(2026, 6, 27, 14, 30, 0);
say $dt; # 2026-06-27T14:30:00Z
```

Forma textus praedefinita normam ISO 8601 sequitur. Primo venit dies. Deinde veniunt littera `T` et tempus. In fine est littera `Z`. Significat zonam temporis UTC.

Partes diei iam cognoscis. `DateTime` eas quoque habet. Etiam partes temporis habet:

```raku
my $dt = DateTime.new(2026, 6, 27, 14, 30, 0);
say $dt.hour;   # 14
say $dt.minute; # 30
```

Pro tempore praesenti, voca `DateTime.now`. Exitum eius hic non monstramus. Idem pro `Date.today` fecimus. Exitus mutatur quotiens programma currit.

{% include nav.html %}
