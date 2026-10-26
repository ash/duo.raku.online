---
title: Nombraj bazoj
translations_gpt:
---

{% include menu.html %}

Vi povas skribi entjeron ankaŭ en aliaj bazoj. Ĝi ne devas esti en bazo 10. Bazo 10 estas la dekuma sistemo. Raku konas la tri plej oftajn aliajn bazojn. Vi bezonas nenion ekstran por ili. Ĉiu bazo havas sian propran prefikson:

```raku
say 0xFF;   # 255  — hexadecimal (base 16)
say 0b1010; # 10   — binary (base 2)
say 0o17;   # 15   — octal (base 8)
```

Vi povas uzi ajnan bazon en la kodo. La valoro ĉiam estas la sama entjero. Nur la maniero skribi ĝin estas alia.

Por ĉiu alia bazo, uzu la formon `:base<number>`. Ĝi nomiĝas la radika formo:

```raku
say :16<FF>;   # 255
say :2<1010>;  # 10
```

Vi ankaŭ povas iri en la alian direkton. Prenu nombron kaj skribu ĝin en alia bazo. Por tio, voku la metodon `base`. Ĝi donas ĉenon de ciferoj:

```raku
say 255.base(16); # FF
say 10.base(2);   # 1010
```

{% include nav.html %}
