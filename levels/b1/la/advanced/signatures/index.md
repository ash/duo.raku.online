---
title: Signaturae
translations_gpt:
---

{% include menu.html %}

In parte Elementorum [subprogrammata cum parametris positionalibus et nominatis definivisti](/la/essentials/functions). Etiam valores praedefinitos parametris dedisti. Index parametrorum _signatura_ appellatur. Haec sectio duas alias res ostendit quas signatura facere potest. Parametrum optionalem facere potest, et quotlibet argumenta superflua colligere potest.

## Parametri optionales

Parametrus cum signo interrogationis post se _optionalis_ est. Hoc significat: vocans eum omittere potest. Tum parametrus indefinitus est. Itaque ei valorem subsidiarium per operatorem defined-or `//` dare potes:

```raku
sub greet($name, $greeting?) {
    my $g = $greeting // 'Hello';
    say "$g, $name!";
}

greet('Anna');           # Hello, Anna!
greet('Anna', 'Hi');     # Hi, Anna!
```

Cum `greet` uno argumento vocatur, `$greeting` indefinitus est. Itaque `//` pro eo `'Hello'` adhibet.

## Parametri sorbentes

Parametrus signo `*` notatus _sorbens_ est. Omnia argumenta reliqua capit. Ordo sorbens, `*@` scriptus, quotlibet argumenta positionalia in ordinem colligit:

```raku
sub count-them(*@items) {
    say @items.elems;
}

count-them(1, 2, 3, 4); # 4
count-them('a', 'b');   # 2
```

Parametros ordinarios cum sorbente miscere potes. Parametri fixi primi valores suos accipiunt. Quidquid restat, in ordinem sorbentem it:

```raku
sub titles($name, *@titles) {
    say "$name has {@titles.elems} title(s)";
}

titles('Anna', 'Dr', 'Prof'); # Anna has 2 title(s)
```

Mappa sorbens eodem modo operatur. Eam ut `*%` scribis, et omnia argumenta nominata superflua in mappam colligit:

```raku
sub register($name, *%options) {
    say "$name: {%options.elems} option(s)";
    say "role is %options<role>";
}

register('Anna', role => 'admin', active => True);
```

Duo argumenta nominata claves in `%options` fiunt, itaque programma imprimit:

```
Anna: 2 option(s)
role is admin
```

{% include nav.html %}
