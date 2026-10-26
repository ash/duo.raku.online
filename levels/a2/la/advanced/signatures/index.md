---
title: Signaturae
translations_gpt:
---

{% include menu.html %}

In parte Elementorum [subprogrammata scripsisti](/la/essentials/functions). Parametros positionales et nominatos habebant. Parametri valores praedefinitos habebant. Index parametrorum est _signatura_. Haec sectio duas alias res ostendit quas signatura facere potest. Parametrum optionalem facere potest. Et quotlibet argumenta superflua colligere potest.

## Parametri optionales

Parametrus cum signo interrogationis post se _optionalis_ est. Vocans eum omittere potest. Tum parametrus indefinitus est. Itaque valorem pro eo dare potes. Ad hoc operatorem defined-or `//` adhibe:

```raku
sub greet($name, $greeting?) {
    my $g = $greeting // 'Hello';
    say "$g, $name!";
}

greet('Anna');           # Hello, Anna!
greet('Anna', 'Hi');     # Hi, Anna!
```

Hic `greet` cum uno argumento vocamus. Tum `$greeting` indefinitus est. Itaque `//` pro eo `'Hello'` dat.

## Parametri sorbentes

Parametrus cum `*` _sorbens_ est. Omnia argumenta quae restant capit. Ordinem sorbentem cum `*@` scribis. Quotlibet argumenta positionalia in ordinem colligit:

```raku
sub count-them(*@items) {
    say @items.elems;
}

count-them(1, 2, 3, 4); # 4
count-them('a', 'b');   # 2
```

Parametros ordinarios cum sorbente simul adhibere potes. Primum parametri fixi valores suos accipiunt. Omnia alia in ordinem sorbentem eunt:

```raku
sub titles($name, *@titles) {
    say "$name has {@titles.elems} title(s)";
}

titles('Anna', 'Dr', 'Prof'); # Anna has 2 title(s)
```

Mappa sorbens eodem modo operatur. Eam cum `*%` scribis. Omnia argumenta nominata superflua in mappam colligit:

```raku
sub register($name, *%options) {
    say "$name: {%options.elems} option(s)";
    say "role is %options<role>";
}

register('Anna', role => 'admin', active => True);
```

Duo argumenta nominata claves mappae `%options` fiunt. Itaque programma imprimit:

```
Anna: 2 option(s)
role is admin
```

{% include nav.html %}
