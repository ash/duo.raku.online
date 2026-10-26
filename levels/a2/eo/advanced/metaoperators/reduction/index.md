---
title: Reduktaj metaoperatoroj
translations_gpt:
---

{% include menu.html %}

Vi skribas reduktan meta-operatoron kiel normalan operatoron en kvadrataj krampoj. Ekzemploj estas `[+]` kaj `[*]`. Ĝi prenas liston de valoroj. Ĝi metas la operatoron inter ĉiun paron de valoroj. Do la tuta listo fariĝas unu sola valoro.

Ekzemple, `[+]` sumigas ĉiujn elementojn de listo:

```raku
my @data = 3, 5, 7, 9, 11;
say [+] @data; # 35
```

`[+] @data` estas same kiel skribi ĉiujn operatorojn mem:

```raku
say 3 + 5 + 7 + 9 + 11; # 35
```

Ankaŭ aliaj infiksaj operatoroj povas funkcii tiel. Per `[*]`, vi ricevas la produkton de la listo. Uzu ĝin kun la gamo `1..$n`. Tio estas facila maniero trovi faktorialon:

```raku
my $n = 5;
say [*] 1..$n; # 120
```

Ĉi tie, la gamo `1..$n` donas la nombrojn de 1 ĝis 5. Poste `[*]` multobligas ilin: `1 * 2 * 3 * 4 * 5`. Tio estas _5!_.

Ĝi funkcias ankaŭ kun ĉenoj. La redukto `[~]` kunigas liston de ĉenoj en unu ĉenon:

```raku
my @strings = <neun hundert fünf und zwanzig>;
say [~] @strings; # neunhundertfünfundzwanzig
```

Vi eĉ povas redukti komparajn operatorojn. `[<]` diras al vi, ĉu ĉiu valoro estas pli granda ol la valoro antaŭ ĝi:

```raku
say [<] 1, 2, 3; # True
```

## Triangula redukto

Metu retrokliniĝon ene de la krampoj. Tiam vi ricevas _triangulan_ redukton. Ĝi konservas la rezulton de ĉiu paŝo, ne nur la lastan rezulton:

```raku
say [\+] 1..5; # (1 3 6 10 15)
```

Ĉiu elemento de la rezulto estas la sumo de la unuaj kelkaj nombroj: `1`, poste `1+2`, poste `1+2+3`, kaj tiel plu. La lasta elemento estas la sumo de la tuta listo.

{% include nav.html %}
