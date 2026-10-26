---
title: 'Risinājums: Noslēgums q virknē'
---

{% include menu.html %}

Šeit ir viens iespējams uzdevuma risinājums.

## Kods

```raku
my $x = 10;
say q:c/$x squared is {$x ** 2}/;
```

🦋 Programmas pirmkodu var atrast failā [closure-quote.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/quoting/closure-quote.raku).

## Izvade

```
$x squared is 100
```

## Komentāri

1. `q` forma parasti atstāj visu tekstu tādu, kāds tas ir. Adverbs `:c` (slēgums) ieslēdz tajā `{ … }` koda interpolēšanu. Figūriekavās `$x` ir īsts kods, tāpēc `{$x ** 2}` dod `100`.

1. `$x` ārpus figūriekavām paliek tieši tāds, kā uzrakstīts. Tas ir tāpēc, ka skalāru adverbs `:s` *nav* ieslēgts. Tāda ir visa jēga tam, ka katrai funkcijai ir savs adverbs. Jūs iegūstat kodu virknē, neieslēdzot arī `$`-interpolēšanu.

1. Adverbus var apvienot. Ja jūs pievienojat arī `:s`, tiek interpolēts arī pirmais `$x`. Tagad abas funkcijas ir ieslēgtas vienlaikus:

```raku
my $x = 10;
say q:c:s/$x squared is {$x ** 2}/; # 10 squared is 100
```

{% include nav.html %}
