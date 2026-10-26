---
title: '`VAR` verwenden'
---

{% include menu.html %}

`VAR` ist eine Pseudo-Methode. Sie gibt das Container-Objekt hinter einer Variable zurück. Bei einer skalaren Variable gibt `.VAR` ihren `Scalar`-Container zurück.

## `^name`

Jetzt hast du den Container. Mit `.^name` kannst du nach dem Namen seiner Klasse fragen:

```raku
my $var1 = 42;
my $var2 = '42';

say $var1.^name;     # Int
say $var1.VAR.^name; # Scalar

say $var2.^name;     # Str
say $var2.VAR.^name; # Scalar
```

`.^name` auf der Variable gibt den Typ des _Wertes_ zurück. Das ist `Int` oder `Str`. `.VAR.^name` gibt den Typ des _Containers_ zurück. In beiden Fällen ist das `Scalar`.

## `default`

Die Methode `default` gibt den Standardwert des Containers zurück. Ein leerer Container gibt dir diesen Wert. Er hat keinen eigenen Wert. Du kannst den Standardwert mit dem Trait `is default` selbst setzen:

```raku
my Str $language is default('Raku');
say $language.VAR.default; # Raku
```

Vielleicht setzt du keinen Standardwert. Dann ist der Standardwert der Typ des Containers. Ein Container ohne Typ hat den Standardwert `Any`. Dabei ist egal, welcher Wert jetzt darin ist:

```raku
my $language = 'Raku';
say $language.VAR.default; # (Any)
```

Bei einem Container mit Typ ist der Standardwert dieser Typ:

```raku
my Str $language;
say $language.VAR.default; # (Str)
```

## `name`

Die Methode `name` gibt den Namen des Containers zurück, mit dem Sigil:

```raku
my $language;
say $language.VAR.name; # $language
```

Verwechsle `^name` und `name` nicht. `^name` liefert den Typ. `name` liefert den Namen der Variable.

{% include nav.html %}
