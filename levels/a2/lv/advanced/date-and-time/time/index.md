---
title: Darbs ar laiku
translations_gpt:
---

{% include menu.html %}

Dažreiz jums vajag datumu un arī diennakts laiku. Tad izmantojiet tipu `DateTime`. Jūs to izveidojat gandrīz tāpat kā `Date`. Bet jūs norādāt arī stundu, minūti un sekundi:

```raku
my $dt = DateTime.new(2026, 6, 27, 14, 30, 0);
say $dt; # 2026-06-27T14:30:00Z
```

Pēc noklusējuma teksts seko standartam ISO 8601. Vispirms nāk datums. Pēc tam nāk burts `T` un laiks. Beigās ir burts `Z`. Tas nozīmē laika joslu UTC.

Jūs jau zināt datuma daļas. Arī tipam `DateTime` ir šīs daļas. Tam ir arī laika daļas:

```raku
my $dt = DateTime.new(2026, 6, 27, 14, 30, 0);
say $dt.hour;   # 14
say $dt.minute; # 30
```

Lai iegūtu pašreizējo laiku, izsauciet `DateTime.now`. Šeit mēs tā izvadi nerādām. Tāpat mēs darījām ar `Date.today`. Izvade mainās katru reizi, kad programma darbojas.

{% include nav.html %}
