---
title: Ĉena konkatenado
---

{% include menu.html %}

Vi povas kunigi du ĉenojn. Tiam vi ricevas novan, pli longan ĉenon. Ni nomas tion konkatenado de ĉenoj. En Raku, vi kunigas ĉenojn per operatoro. Ĉu vi povas diveni ĝian nomon? Ĝi estas la konkatenada operatoro! Tiu operatoro estas tildo: `~`. Por kunigi du ĉenojn, metu `~` inter ili:

```raku
say 'Hello, ' ~ 'World!';
```

Kelkfoje la ĉenoj estas en variabloj. Tiam ni povas ‘kunigi la variablojn’. Nu, fakte ni kunigas la ĉenojn en tiuj variabloj:

```raku
my $greeting = 'Hello, ';
my $who = 'World!';

say $greeting ~ $who;
```

Vi ankaŭ povas meti la rezulton en novan variablon:

```raku
my $greeting = 'Hello, ';
my $who = 'World!';
my $message = $greeting ~ $who;

say $message;
```

## Konkatenado kaj asigno en unu paŝo

Kelkfoje vi volas aldoni ĉenon al la fino de variablo. Tiam uzu ĉi tiun formon:

```raku
# Anstataŭ 
$str = $str ~ $another-str;

# uzu:
$str ~= $another-str;
```

{% include nav.html %}
