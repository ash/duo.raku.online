---
title: 'Ligado per `:=`'
translations_gpt:
---

{% include menu.html %}

Ĝis nun, ĉiu nova variablo faris novan ujon. Atribuo per `=` metis valoron _en_ ĉi tiun ujon. Ligado estas alia. Vi skribas ĝin per `:=`. Ligado ne faras novan ujon. Ĝi donas nomon al _ekzistanta_ ujo.

Post ligado, la du nomoj havas unu komunan ujon. Ŝanĝu la valoron per unu nomo. La alia nomo ankaŭ vidas la ŝanĝon:

```raku
my $x = 10;
my $y := $x;

$x = 20;
say $y; # 20
```

Ĉi tie, `$y := $x` ne kopias la valoron `10`. Ĝi faras el `$y` duan nomon por la ujo de `$x`. Ĝi estas la sama ujo. Poste, `$x` ricevas la valoron `20`. Tiam `$y` estas ankaŭ `20`.

Komparu tion kun normala atribuo. Ĝi kopias la valoron en alian ujon:

```raku
my $x = 10;
my $y = $x; # simpla kopio

$x = 20;
say $y; # 10
```

Ligado funkcias ankaŭ kun tabeloj. Ĉi tie, `@alias` fariĝas dua nomo por `@data`:

```raku
my @data = 1, 2, 3;
my @alias := @data;

@alias[0] = 99;
say @data; # [99 2 3]
```

Ankoraŭ unu detalo. Vi povas ligi nomon rekte al literala valoro. Tio estas valoro, kiun vi skribas en la kodo. Tiam ne estas ujo malantaŭ la nomo. Do la nomo estas nur-legebla. Vi ne povas atribui ion al ĝi:

```raku
my $pi := 3.14;
$pi = 3;
```

```
Cannot assign to an immutable value
  in block <unit> at t.raku line 2
```

{% include nav.html %}
