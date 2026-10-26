---
title: Lavorare con l'ora
---

{% include menu.html %}

Se ti servono sia la data sia l'ora del giorno, usa il tipo `DateTime`. Lo crei quasi come un `Date`. Ma indichi anche l'ora, il minuto e il secondo:

```raku
my $dt = DateTime.new(2026, 6, 27, 14, 30, 0);
say $dt; # 2026-06-27T14:30:00Z
```

La forma di testo predefinita segue lo standard ISO 8601. Contiene la data, la lettera `T` e l'ora. Alla fine, una `Z` indica il fuso orario UTC.

Un `DateTime` ha le parti della data che conosci già. Ti permette anche di leggere le parti dell'ora:

```raku
my $dt = DateTime.new(2026, 6, 27, 14, 30, 0);
say $dt.hour;   # 14
say $dt.minute; # 30
```

Per ottenere il momento attuale, chiama `DateTime.now`. Il suo output qui non è mostrato, proprio come per `Date.today`. Cambia ogni volta che esegui il programma.

{% include nav.html %}
