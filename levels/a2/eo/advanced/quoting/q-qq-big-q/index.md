---
title: q, qq, kaj Q
translations_gpt:
---

{% include menu.html %}

Estas tri bazaj citaj operatoroj. Ili ŝanĝas la tekston ene de si malsame multe:

* `q` — kiel unuopaj citiloj: preskaŭ la tuta teksto restas sen ŝanĝo
* `qq` — kiel duoblaj citiloj: Raku interpolas variablojn kaj eskapojn
* `Q` — la plej laŭlitera: Raku ŝanĝas **nenion**

Ĉiu el ili prenas la tekston inter du limigiloj. Limigiloj estas la signoj ĉirkaŭ la teksto. Vi jam konas `'…'`. Ĝi estas mallonga formo de `q`. Kaj `"…"` estas mallonga formo de `qq`:

```raku
my $name = 'Anna';

say q{Hello $name};  # Hello $name
say qq{Hello $name}; # Hello Anna
```

`q` ne ŝanĝas `$name`. `qq` interpolas ĝin. Maldekstre-streketaj eskapoj kiel `\n` funkcias same. Nur `qq` kaj `"…"` faras el `\n` veran novlinion. Kaj `q` kaj `Q` tenas ĝin kiel du signojn: `\` kaj `n`:

```raku
say qq{line\nbreak}; # line<newline>break
say q{line\nbreak};  # line\nbreak
say Q{line\nbreak};  # line\nbreak
```

Do kio estas la diferenco inter `q` kaj `Q`? `q` estas kiel unuopaj citiloj. Ĝi ankoraŭ traktas *malgrandan* aron da eskapoj. Duobla maldekstra streketo `\\` fariĝas unu maldekstra streketo. Vi ankaŭ povas eskapi la fermilon per maldekstra streketo. Sed la simpla `Q`-formo ŝanĝas **nenion** ajn:

```raku
say q{a\\b}; # a\b   — q kolapsas la eskapitan maldekstran streketon
say Q{a\\b}; # a\\b  — Q konservas ambaŭ signojn
```

Vi povas uzi ajnajn limigilojn: `q{…}`, `q[…]`, `q/…/`, `q!…!`. Tio helpas, kiam la teksto mem havas citilojn. Ĉi tiuj tri operatoroj estas la bazo. La sekva temo montras [_adverbojn_](/eo/advanced/quoting/adverbs). Per ili, vi elektas ĝuste, kiuj funkcioj estas ŝaltitaj.

{% include nav.html %}
