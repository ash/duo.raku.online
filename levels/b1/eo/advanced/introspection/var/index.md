---
title: 'Uzante `VAR`'
translations_gpt:
---

{% include menu.html %}

`VAR` estas pseŭdo-metodo, kiu redonas la ujo-objekton malantaŭ variablo. Por skalara variablo, alvoko de `.VAR` donas la ujon `Scalar` malantaŭ ĝi.

## `^name`

Kun la ujo, vi povas demandi pri la nomo de ĝia klaso per `.^name`:

```raku
my $var1 = 42;
my $var2 = '42';

say $var1.^name;     # Int
say $var1.VAR.^name; # Scalar

say $var2.^name;     # Str
say $var2.VAR.^name; # Scalar
```

`.^name` sur la variablo donas la tipon de la _valoro_, `Int` aŭ `Str`. Sed `.VAR.^name` donas la tipon de la _ujo_, kiu estas `Scalar` en ambaŭ kazoj.

## `default`

La metodo `default` redonas la defaŭltan valoron de la ujo. Tion vi ricevas, kiam la ujo tenas neniun propran valoron. Vi povas mem agordi ĝin per la trajto `is default`:

```raku
my Str $language is default('Raku');
say $language.VAR.default; # Raku
```

Se vi agordas neniun defaŭlton, la defaŭlta valoro estas la tipo de la ujo. Por ujo sen tipo, ĝi estas `Any`. Ĝia nuna valoro ne gravas:

```raku
my $language = 'Raku';
say $language.VAR.default; # (Any)
```

Por tipigita ujo, ĝi estas la tipo en la limigo:

```raku
my Str $language;
say $language.VAR.default; # (Str)
```

## `name`

La metodo `name` donas la nomon de la ujo, kune kun ĝia sigelo:

```raku
my $language;
say $language.VAR.name; # $language
```

Atentu ne konfuzi `^name` kaj `name`. La unua donas la tipon, kaj la dua donas la propran nomon de la variablo.

{% include nav.html %}
