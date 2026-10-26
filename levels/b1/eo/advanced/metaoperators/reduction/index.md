---
title: Reduktaj metaoperatoroj
translations_gpt:
---

{% include menu.html %}

Redukta meta-operatoro estas ordinara operatoro en kvadrataj krampoj, kiel `[+]` aŭ `[*]`. Ĝi prenas liston de valoroj kaj metas la operatoron inter ĉiun paron el ili. Tiel ĝi reduktas la tutan liston al unu sola valoro.

Ekzemple, `[+]` sumigas ĉiujn elementojn de listo:

```raku
my @data = 3, 5, 7, 9, 11;
say [+] @data; # 35
```

La kodo `[+] @data` estas same kiel skribi la operatoron mane:

```raku
say 3 + 5 + 7 + 9 + 11; # 35
```

Ĉiu taŭga infiksa operatoro funkcias same. Per `[*]`, vi ricevas la produkton de la listo. Do vi povas uzi ĝin kun la gamo `1..$n` por facile kalkuli faktorialon:

```raku
my $n = 5;
say [*] 1..$n; # 120
```

Ĉi tie, la gamo `1..$n` donas la nombrojn de 1 ĝis 5, kaj `[*]` multobligas ilin: `1 * 2 * 3 * 4 * 5`. La rezulto estas _5!_.

Ĝi funkcias ankaŭ por kunigi ĉenojn. La redukto `[~]` kunigas liston de ĉenoj en unu:

```raku
my @strings = <neun hundert fünf und zwanzig>;
say [~] @strings; # neunhundertfünfundzwanzig
```

Vi eĉ povas redukti komparajn operatorojn. `[<]` diras al vi, ĉu ĉiu valoro estas pli granda ol tiu antaŭ ĝi:

```raku
say [<] 1, 2, 3; # True
```

## Triangula redukto

Se vi metas retrokliniĝon ene de la krampoj, vi ricevas _triangulan_ redukton. Ĝi konservas ĉiujn mezajn rezultojn, ne nur la finan:

```raku
say [\+] 1..5; # (1 3 6 10 15)
```

Ĉiu elemento de la rezulto estas parta sumo: `1`, poste `1+2`, poste `1+2+3`, kaj tiel plu. La lasta estas la sumo de la tuta listo.

{% include nav.html %}
