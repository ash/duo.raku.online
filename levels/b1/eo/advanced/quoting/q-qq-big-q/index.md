---
title: q, qq, kaj Q
translations_gpt:
---

{% include menu.html %}

Ekzistas tri bazaj citaj operatoroj. La diferenco estas, kiom ili prilaboras la tekston ene de si:

* `q` — kiel unuopaj citiloj: preskaŭ ĉio restas sen ŝanĝo
* `qq` — kiel duoblaj citiloj: variabloj kaj eskapoj estas interpolataj
* `Q` — la plej laŭlitera el ĉiuj: **nenio** estas prilaborata

Ĉiu el ili prenas la tekston inter paro de limigiloj. La konata `'…'` estas nur mallonga maniero skribi `q`. Same, `"…"` estas mallongigo por `qq`:

```raku
my $name = 'Anna';

say q{Hello $name};  # Hello $name
say qq{Hello $name}; # Hello Anna
```

`q` lasas `$name` sen ŝanĝo, sed `qq` interpolas ĝin. Maldekstre-streketaj eskapoj kiel `\n` funkcias same. Nur `qq` (kaj `"…"`) faras el `\n` veran novlinion. Kaj `q` kaj `Q` lasas ĝin kiel du signojn, `\` kaj `n`:

```raku
say qq{line\nbreak}; # line<newline>break
say q{line\nbreak};  # line\nbreak
say Q{line\nbreak};  # line\nbreak
```

Do kiel `q` kaj `Q` diferencas? Kiel unuopaj citiloj, `q` ankoraŭ traktas *malgrandan* aron da eskapoj. Duobligita maldekstra streketo `\\` fariĝas unu, kaj vi povas eskapi la fermilon. La simpla `Q`-formo, tamen, prilaboras tute **nenion**:

```raku
say q{a\\b}; # a\b   — q kolapsas la eskapitan maldekstran streketon
say Q{a\\b}; # a\\b  — Q konservas ambaŭ signojn
```

Vi povas uzi ajnajn limigilojn, ekzemple `q{…}`, `q[…]`, `q/…/` aŭ `q!…!`. Tio utilas, kiam la teksto mem enhavas citilojn. La tri operatoroj estas la bazo. La sekva temo montras, kiel [_adverboj_](/eo/advanced/quoting/adverbs) lasas vin elekti ĝuste, kiuj funkcioj estas ŝaltitaj.

{% include nav.html %}
