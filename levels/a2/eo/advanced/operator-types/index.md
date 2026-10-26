---
title: Tipoj de Raku-operatoroj
translations_gpt:
---

{% include menu.html %}

Vi jam konas multajn operatorojn, kiel `+`, `~` kaj `++`. Operatoro laboras kun valoroj. Ĉi tiuj valoroj estas ĝiaj operandoj. Raku ordigas operatorojn en kategoriojn. Kategorio estas grupo. La kategorio dependas de tio, _kie_ la operatoro staras apud siaj operandoj. Poste, vi faros proprajn operatorojn. Tiam la kategorioj helpos vin.

## `prefix`

Prefiksa operatoro havas unu operandon. Ĝi venas _antaŭ_ ĉi tiu operando:

```raku
my $x = 5;
say -$x; # -5
say ?$x; # True
```

Ĉi tie, `-` ŝanĝas la signon de la nombro. La operatoro `?` ŝanĝas valoron al `True` aŭ `False`. Tio estas ĝia Boolean valoro.

## `infix`

Infiksa operatoro staras _inter_ du operandoj. Vi konas multajn operatorojn por nombroj kaj ĉenoj. La plej multaj el ili estas infiksaj:

```raku
say 3 + 4;       # 7
say 'a' ~ 'b';   # ab
```

Infiksa operatoro ne ĉiam estas simbolo. Ĝi ankaŭ povas esti vorto. Prenu la operatoron `gcd` el la sekcio pri [entjeroj](/eo/advanced/integers). Ĝi estas infiksa operatoro. Vi skribas ĝian nomon inter ĝiaj du operandoj:

```raku
say 12 gcd 18;   # 6
```

## `postfix`

Postfiksa operatoro havas unu operandon. Ĝi venas _post_ ĉi tiu operando:

```raku
my $x = 5;
$x++;
say $x; # 6
```

## `circumfix` kaj `postcircumfix`

Ĉirkaŭfiksa operatoro staras _ĉirkaŭ_ sia operando. Rigardu la rektajn krampojn, kiuj faras tabelon. Ili estas ĉirkaŭfiksa operatoro:

```raku
my @a = [1, 2, 3];
```

Post-ĉirkaŭfiksa operatoro ankaŭ staras ĉirkaŭ io. Sed ĝi venas post termino. Termino estas, ekzemple, variablo. Subskriboj estas post-ĉirkaŭfiksaj operatoroj. Ĉi tie, la subskribo estas la `[1]` post `@a`:

```raku
my @a = 10, 20, 30;
say @a[1]; # 20
```

La nomoj estas `prefix`, `infix`, `postfix`, `circumfix` kaj `postcircumfix`. Raku uzas la samajn vortojn, kiam vi [deklaras novan operatoron](/eo/advanced/user-defined-operators). Vi vidos tion poste.

{% include nav.html %}
