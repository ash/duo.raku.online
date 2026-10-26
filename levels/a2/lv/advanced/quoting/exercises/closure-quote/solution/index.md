---
title: 'Risinājums: Noslēgums q virknē'
---

{% include menu.html %}

Šeit ir viens veids, kā atrisināt uzdevumu.

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

1. `q` forma parasti atstāj tekstu tādu, kāds tas ir. Adverbs `:c` (slēgums) to maina. Tas ieslēdz `{ … }` koda interpolēšanu tekstā. Figūriekavās `$x` ir īsts kods. Tāpēc `{$x ** 2}` dod `100`.

1. `$x` ārpus figūriekavām paliek tieši tāds, kāds tas ir. Tas ir tāpēc, ka skalāru adverbs `:s` *nav* ieslēgts. Tāda ir visa ideja par vienu adverbu katrai funkcijai. Jūs iegūstat kodu tekstā. Bet jūs neieslēdzat arī `$` mainīgo interpolēšanu.

1. Jūs varat lietot vairākus adverbus kopā. Pievienojiet arī `:s`. Tad arī pirmais `$x` tiek interpolēts. Tagad abas funkcijas ir ieslēgtas:

```raku
my $x = 10;
say q:c:s/$x squared is {$x ** 2}/; # 10 squared is 100
```

{% include nav.html %}
