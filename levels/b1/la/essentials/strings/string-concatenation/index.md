---
title: Catena concatenatio
---

{% include menu.html %}

Si duas chordas habes, eas coniungere et novam chordam longiorem accipere potes. Hoc concatenatio chordarum appellatur. In Raku chordas concatenas—quid putas?—operatore concatenationis. Hic operator est tilde, `~`. Ut duas chordas concatenes, `~` inter eas pone:

```raku
say 'Hello, ' ~ 'World!';
```

Si chordae nostrae in variabilibus tenentur, ‘variabiles concatenare’ possumus. Sed, ut accurate dicam, chordas concatenamus quas illae variabiles tenent:

```raku
my $greeting = 'Hello, ';
my $who = 'World!';

say $greeting ~ $who;
```

Vel novam variabilem creare potes quae eventum concatenationis tenet:

```raku
my $greeting = 'Hello, ';
my $who = 'World!';
my $message = $greeting ~ $who;

say $message;
```

## Concatenatio cum assignatione

Ut novam chordam ad finem variabilis addas, hac forma utere:

```raku
# Pro
$str = $str ~ $another-str;

# utere:
$str ~= $another-str;
```

{% include nav.html %}
