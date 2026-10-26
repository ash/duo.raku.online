---
title: Valores praedefiniti
translations_gpt:
---

{% include menu.html %}

Attributum _valorem praedefinitum_ habere potest. Interdum obiectum sine valore pro attributo facis. Tum Raku valore praedefinito utitur. Scribe valorem praedefinitum post attributum, cum `=`:

```raku
class Dog {
    has Str $.name;
    has Rat $.weight = 4.0;
}
```

Nota etiam rem aliam. Attributo genus dare potes, sicut variabili. Tum valor hoc genus habere debet.

Hic `new` nullum `weight` accipit. Itaque attributum valorem praedefinitum accipit:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.weight; # 4
```

Sed tamen valorem tuum dare potes. Is valorem praedefinitum superat:

```raku
my $lighty = Dog.new(name => 'Lighty', weight => 3.2);
say $lighty.weight; # 3.2
```

Interdum attributum valorem praedefinitum non habet. Etiam valorem pro eo ad `new` non tradis. Tum attributum simpliciter indefinitum est. Est sicut nova variabilis scalaris.

{% include nav.html %}
