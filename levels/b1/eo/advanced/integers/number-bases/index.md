---
title: Nombraj bazoj
translations_gpt:
---

{% include menu.html %}

En via kodo, vi ne devas skribi entjerojn en la dekuma sistemo. Raku tuj konas la tri plej oftajn aliajn bazojn. Ĉiu el ili havas sian propran prefikson:

```raku
say 0xFF;   # 255  — hexadecimal (base 16)
say 0b1010; # 10   — binary (base 2)
say 0o17;   # 15   — octal (base 8)
```

Kiun ajn bazon vi uzas en la kodo, la valoro estas la sama entjero. Nur la maniero, kiel vi skribas ĝin, estas alia.

Por ĉiuj aliaj bazoj ekzistas la radika formo `:base<number>`:

```raku
say :16<FF>;   # 255
say :2<1010>;  # 10
```

Por iri en la alian direkton, voku la metodon `base`. Ĝi skribas nombron en alia bazo kaj redonas ĉenon de ciferoj:

```raku
say 255.base(16); # FF
say 10.base(2);   # 1010
```

{% include nav.html %}
