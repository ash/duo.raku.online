---
title: 'Solvo: Veraj kaj falsaj nombroj'
translations_gpt:
---

{% include menu.html %}

La plej rapida maniero respondi la demandon estas testi kelkajn nombrojn samtempe. Uzu la operatoron `?` sur ĉiuj kaj komparu la rezultojn:

```raku
for -2, -0.5, -1/3, 0, 1/3, 0.5, 2 -> $n {
    say "$n -> {?$n}";
}
```

El la eligo, la ŝablono estas klara. Ĉiu valoro presas `True`, krom tiu en la mezo:

    -2 -> True
    -0.5 -> True
    -0.333333 -> True
    0 -> False
    0.333333 -> True
    0.5 -> True
    2 -> True

Do la signo kaj la grandeco de la nombro tute ne gravas. Nur nulo validas kiel `False`. La sekva demando estas, ĉu tio veras por ĉiu nombra tipo. Notu, ke `0` estas `Int`, `0.0` estas `Rat`, kaj `0e0` estas `Num`:

```raku
my Int $int-zero = 0;
say ?$int-zero; # False

my Rat $rat-zero = 0.0;
say ?$rat-zero; # False

my Num $num-zero = 0e0;
say ?$num-zero; # False
```

Kompreneble, nenio ŝanĝiĝas, se vi unue ŝanĝas la signon de la nombro:

```raku
my $int = 0;
say ?(-$int); # False
```

🦋 Vi povas trovi la plenan programon kun la supra ekzemplo en la dosiero [true-false-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/true-false-numbers.raku).

{% include nav.html %}
