---
title: Ĉena konkatenado
---

{% include menu.html %}

Se vi havas du ĉenojn, vi povas kunigi ilin kaj ricevi novan, pli longan ĉenon. Tio nomiĝas konkatenado de ĉenoj. En Raku, vi kunigas ĉenojn per—divenu kion?—la konkatenada operatoro. Tiu operatoro estas tildo, `~`. Por kunigi du ĉenojn, metu `~` inter ili:

```raku
say 'Hello, ' ~ 'World!';
```

Se niaj ĉenoj estas konservitaj en variabloj, ni povas ‘kunigi variablojn’. Nu, por esti preciza, ni kunigas la ĉenojn, kiujn tiuj variabloj tenas:

```raku
my $greeting = 'Hello, ';
my $who = 'World!';

say $greeting ~ $who;
```

Aŭ vi povas krei novan variablon, kiu tenas la rezulton de la kunigo:

```raku
my $greeting = 'Hello, ';
my $who = 'World!';
my $message = $greeting ~ $who;

say $message;
```

## Konkatenado kun asigno

Por aldoni novan ĉenon al la fino de variablo, uzu ĉi tiun formon:

```raku
# Anstataŭ 
$str = $str ~ $another-str;

# uzu:
$str ~= $another-str;
```

{% include nav.html %}
