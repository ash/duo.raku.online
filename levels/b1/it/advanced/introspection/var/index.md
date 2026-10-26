---
title: Usare `VAR`
---

{% include menu.html %}

`VAR` è uno pseudo-metodo che restituisce l'oggetto contenitore dietro una variabile. Per una variabile scalare, una chiamata a `.VAR` dà il contenitore `Scalar` che c'è dietro.

## `^name`

Con il contenitore, puoi chiedere il nome della sua classe con `.^name`:

```raku
my $var1 = 42;
my $var2 = '42';

say $var1.^name;     # Int
say $var1.VAR.^name; # Scalar

say $var2.^name;     # Str
say $var2.VAR.^name; # Scalar
```

`.^name` sulla variabile dà il tipo del _valore_, `Int` o `Str`. Ma `.VAR.^name` dà il tipo del _contenitore_, che è `Scalar` in entrambi i casi.

## `default`

Il metodo `default` restituisce il valore predefinito del contenitore. È quello che ottieni quando il contenitore non contiene un valore suo. Puoi impostarlo tu stesso con il trait `is default`:

```raku
my Str $language is default('Raku');
say $language.VAR.default; # Raku
```

Se non imposti un valore predefinito, il valore predefinito è il tipo del contenitore. Per un contenitore senza tipo, è `Any`. Il suo valore attuale non conta:

```raku
my $language = 'Raku';
say $language.VAR.default; # (Any)
```

Per un contenitore tipizzato, è il tipo nel vincolo:

```raku
my Str $language;
say $language.VAR.default; # (Str)
```

## `name`

Il metodo `name` dà il nome del contenitore, insieme al suo sigillo:

```raku
my $language;
say $language.VAR.name; # $language
```

Fai attenzione a non confondere `^name` e `name`. Il primo dà il tipo, e il secondo dà il nome della variabile stessa.

{% include nav.html %}
