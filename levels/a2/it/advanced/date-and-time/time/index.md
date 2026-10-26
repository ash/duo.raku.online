---
title: Lavorare con l'ora
---

{% include menu.html %}

A volte ti serve la data e anche l'ora del giorno. Allora usa il tipo `DateTime`. Lo crei quasi come un `Date`. Ma dai anche l'ora, il minuto e il secondo:

```raku
my $dt = DateTime.new(2026, 6, 27, 14, 30, 0);
say $dt; # 2026-06-27T14:30:00Z
```

Normalmente il testo segue lo standard ISO 8601. Prima viene la data. Poi vengono la lettera `T` e l'ora. Alla fine c'è la lettera `Z`. Indica il fuso orario UTC.

Conosci già le parti di una data. Anche un `DateTime` le ha. Ha anche le parti dell'ora:

```raku
my $dt = DateTime.new(2026, 6, 27, 14, 30, 0);
say $dt.hour;   # 14
say $dt.minute; # 30
```

Per avere l'ora di adesso, chiama `DateTime.now`. Qui non mostriamo il suo output. Abbiamo fatto lo stesso per `Date.today`. L'output cambia ogni volta che esegui il programma.

{% include nav.html %}
