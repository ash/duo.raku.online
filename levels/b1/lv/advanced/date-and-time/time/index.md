---
title: Darbs ar laiku
translations_gpt:
---

{% include menu.html %}

Ja jums vajag gan datumu, gan diennakts laiku, izmantojiet tipu `DateTime`. Jūs to izveidojat gandrīz tāpat kā `Date`. Bet jūs norādāt arī stundu, minūti un sekundi:

```raku
my $dt = DateTime.new(2026, 6, 27, 14, 30, 0);
say $dt; # 2026-06-27T14:30:00Z
```

Noklusētā teksta forma seko standartam ISO 8601. Tajā ir datums, burts `T` un laiks. Beigās `Z` nozīmē UTC laika joslu.

Tipam `DateTime` ir datuma daļas, kuras jūs jau zināt. Tas ļauj nolasīt arī laika daļas:

```raku
my $dt = DateTime.new(2026, 6, 27, 14, 30, 0);
say $dt.hour;   # 14
say $dt.minute; # 30
```

Lai iegūtu pašreizējo brīdi, izsauciet `DateTime.now`. Tā izvade šeit nav parādīta, tāpat kā `Date.today` gadījumā. Tā mainās katru reizi, kad jūs palaižat programmu.

{% include nav.html %}
