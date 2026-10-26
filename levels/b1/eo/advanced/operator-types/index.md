---
title: Tipoj de Raku-operatoroj
translations_gpt:
---

{% include menu.html %}

Vi jam uzis multajn operatorojn, ekzemple `+`, `~` kaj `++`. La operandoj estas la valoroj, kun kiuj operatoro laboras. En Raku, operatoroj estas ordigitaj en kategoriojn laŭ tio, _kie_ ili staras apud siaj operandoj. Koni la kategoriojn helpos vin poste, kiam vi kreos proprajn operatorojn.

## `prefix`

Prefiksa operatoro venas _antaŭ_ sia sola operando:

```raku
my $x = 5;
say -$x; # -5
say ?$x; # True
```

Ĉi tie, `-` ŝanĝas la signon de la nombro. La operatoro `?` ŝanĝas valoron al ĝia Boolean valoro.

## `infix`

Infiksa operatoro staras _inter_ du operandoj. La plej multaj aritmetikaj kaj ĉenaj operatoroj, kiujn vi konas, funkcias tiel:

```raku
say 3 + 4;       # 7
say 'a' ~ 'b';   # ab
```

Infiksa operatoro ne devas esti simbolo. Ĝi ankaŭ povas esti vorto. Ekzemple, la operatoro `gcd` el la sekcio pri [entjeroj](/eo/advanced/integers) estas infiksa operatoro. Ĝi estas nomo, kiun vi skribas inter ĝiaj du operandoj:

```raku
say 12 gcd 18;   # 6
```

## `postfix`

Postfiksa operatoro venas _post_ sia sola operando:

```raku
my $x = 5;
$x++;
say $x; # 6
```

## `circumfix` kaj `postcircumfix`

Ĉirkaŭfiksa operatoro staras _ĉirkaŭ_ sia operando. La rektaj krampoj, kiuj kreas tabelon, estas ekzemplo:

```raku
my @a = [1, 2, 3];
```

Post-ĉirkaŭfiksa operatoro ankaŭ staras ĉirkaŭ io, sed ĝi venas post termino. Subskribo, ekzemple la `[1]` post `@a`, estas post-ĉirkaŭfiksa operatoro:

```raku
my @a = 10, 20, 30;
say @a[1]; # 20
```

Jen la nomoj de la kategorioj: `prefix`, `infix`, `postfix`, `circumfix` kaj `postcircumfix`. Kiel vi vidos poste, Raku uzas la samajn vortojn por [deklari novan operatoron](/eo/advanced/user-defined-operators).

{% include nav.html %}
