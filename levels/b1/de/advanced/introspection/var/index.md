---
title: '`VAR` verwenden'
---

{% include menu.html %}

`VAR` ist eine Pseudo-Methode, die das Container-Objekt hinter einer Variable zurückgibt. Bei einer skalaren Variable liefert ein Aufruf von `.VAR` den `Scalar`-Container dahinter.

## `^name`

Mit dem Container kannst du über `.^name` nach dem Namen seiner Klasse fragen:

```raku
my $var1 = 42;
my $var2 = '42';

say $var1.^name;     # Int
say $var1.VAR.^name; # Scalar

say $var2.^name;     # Str
say $var2.VAR.^name; # Scalar
```

`.^name` auf der Variable liefert den Typ des _Wertes_, `Int` oder `Str`. Aber `.VAR.^name` liefert den Typ des _Containers_, und der ist in beiden Fällen `Scalar`.

## `default`

Die Methode `default` gibt den Standardwert des Containers zurück. Das bekommst du, wenn der Container keinen eigenen Wert enthält. Du kannst ihn mit dem Trait `is default` selbst setzen:

```raku
my Str $language is default('Raku');
say $language.VAR.default; # Raku
```

Wenn du keinen Standardwert setzt, ist der Standardwert der Typ des Containers. Bei einem Container ohne Typ ist das `Any`. Sein aktueller Wert spielt keine Rolle:

```raku
my $language = 'Raku';
say $language.VAR.default; # (Any)
```

Bei einem typisierten Container ist es der Typ aus dem Constraint:

```raku
my Str $language;
say $language.VAR.default; # (Str)
```

## `name`

Die Methode `name` liefert den Namen des Containers, zusammen mit seinem Sigil:

```raku
my $language;
say $language.VAR.name; # $language
```

Pass auf, dass du `^name` und `name` nicht verwechselst. Das erste liefert den Typ, und das zweite liefert den eigenen Namen der Variable.

{% include nav.html %}
