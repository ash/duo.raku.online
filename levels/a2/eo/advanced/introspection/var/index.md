---
title: 'Uzante `VAR`'
translations_gpt:
---

{% include menu.html %}

`VAR` estas pseŭdo-metodo. Ĝi redonas la ujo-objekton malantaŭ variablo. Por skalara variablo, `.VAR` redonas ĝian ujon `Scalar`.

## `^name`

Nun vi havas la ujon. Vi povas demandi pri la nomo de ĝia klaso per `.^name`:

```raku
my $var1 = 42;
my $var2 = '42';

say $var1.^name;     # Int
say $var1.VAR.^name; # Scalar

say $var2.^name;     # Str
say $var2.VAR.^name; # Scalar
```

`.^name` sur la variablo redonas la tipon de la _valoro_. Ĝi estas `Int` aŭ `Str`. `.VAR.^name` redonas la tipon de la _ujo_. En ambaŭ kazoj, ĝi estas `Scalar`.

## `default`

La metodo `default` redonas la defaŭltan valoron de la ujo. Malplena ujo donas al vi ĉi tiun valoron. Ĝi ne havas propran valoron. Vi povas mem agordi la defaŭlton per la trajto `is default`:

```raku
my Str $language is default('Raku');
say $language.VAR.default; # Raku
```

Eble vi ne agordas defaŭlton. Tiam la defaŭlta valoro estas la tipo de la ujo. Ujo sen tipo havas la defaŭlton `Any`. Ne gravas, kia valoro estas en ĝi nun:

```raku
my $language = 'Raku';
say $language.VAR.default; # (Any)
```

Por ujo kun tipo, la defaŭlto estas tiu tipo:

```raku
my Str $language;
say $language.VAR.default; # (Str)
```

## `name`

La metodo `name` redonas la nomon de la ujo, kun la sigelo:

```raku
my $language;
say $language.VAR.name; # $language
```

Ne miksu `^name` kaj `name`. `^name` donas la tipon. `name` donas la nomon de la variablo.

{% include nav.html %}
