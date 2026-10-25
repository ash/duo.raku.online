---
title: De defined-or-operator
---

{% include menu.html %}

De zogenaamde _defined-or_ operator `//` helpt als een variabele nog geen waarde heeft. In dat geval geeft hij je een andere waarde om te gebruiken.

```raku
my $a = 'alpha';
say $a // 'gamma';

my $b;
say $b // 'delta';
```

Dit programma print:

```
alpha
delta
```

De waarde van `$a` wordt in de eerste regel ingesteld. Daarom gebruikt de expressie `$a // 'gamma'` de huidige waarde van `$a`. De variabele `$b` kreeg aan de andere kant geen beginwaarde. Daarom retourneert `$b // 'delta'` de operand aan de rechterkant, en het programma print `delta`.

## //=

Als je `//` en `=` combineert, krijg je de `//=` operator. Die kent alleen een waarde toe als de variabele niet gedefinieerd is.

```raku
my $x;
$x //= 42;
say $x; # 42
```

{% include nav.html %}
