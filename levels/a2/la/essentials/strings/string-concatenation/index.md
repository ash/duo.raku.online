---
title: Catena concatenatio
---

{% include menu.html %}

Duas chordas coniungere potes. Tum novam chordam longiorem accipis. Hoc concatenationem chordarum vocamus. In Raku chordas operatore concatenas. Potesne nomen eius divinare? Est operator concatenationis! Hic operator est tilde: `~`. Ut duas chordas concatenes, `~` inter eas pone:

```raku
say 'Hello, ' ~ 'World!';
```

Interdum chordae in variabilibus sunt. Tum ‘variabiles concatenare’ possumus. Re vera autem chordas in his variabilibus concatenamus:

```raku
my $greeting = 'Hello, ';
my $who = 'World!';

say $greeting ~ $who;
```

Eventum etiam in novam variabilem ponere potes:

```raku
my $greeting = 'Hello, ';
my $who = 'World!';
my $message = $greeting ~ $who;

say $message;
```

## Concatenatio et assignatio uno gradu

Interdum chordam ad finem variabilis addere vis. Tum hac forma utere:

```raku
# Pro
$str = $str ~ $another-str;

# utere:
$str ~= $another-str;
```

{% include nav.html %}
