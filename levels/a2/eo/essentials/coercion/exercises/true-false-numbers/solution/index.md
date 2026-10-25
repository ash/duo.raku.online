---
title: 'Solvo: Veraj kaj falsaj nombroj'
translations_gpt:
---

{% include menu.html %}

Jen la plej rapida maniero trovi la respondon. Prenu kelkajn malsamajn nombrojn. Uzu la operatoron `?` sur ĉiuj samtempe. Poste komparu la rezultojn:

```raku
for -2, -0.5, -1/3, 0, 1/3, 0.5, 2 -> $n {
    say "$n -> {?$n}";
}
```

La eligo montras la ŝablonon. Ĉiuj valoroj presas `True`. Nur la valoro en la mezo ne faras tion:

    -2 -> True
    -0.5 -> True
    -0.333333 -> True
    0 -> False
    0.333333 -> True
    0.5 -> True
    2 -> True

Do la signo kaj la grandeco de nombro ne gravas. Nur nulo estas `False`. Jen la sekva demando. Ĉu tio validas por ĉiu tipo de nombro? Estas tri nuloj por kontroli. `0` estas `Int`, kaj `0.0` estas `Rat`. Kaj `0e0` estas `Num`:

```raku
my Int $int-zero = 0;
say ?$int-zero; # False

my Rat $rat-zero = 0.0;
say ?$rat-zero; # False

my Num $num-zero = 0e0;
say ?$num-zero; # False
```

Kompreneble, minuso antaŭ la nombro ŝanĝas nenion:

```raku
my $int = 0;
say ?(-$int); # False
```

🦋 Vi povas trovi la plenan programon kun la supra ekzemplo en la dosiero [true-false-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/true-false-numbers.raku).

{% include nav.html %}
