---
title: De defined-or-operator
---

{% include menu.html %}

Soms heeft een variabele nog geen waarde. Dan kun je een andere waarde gebruiken. Daarvoor is er de `//` operator. Hij heet de _defined-or_ operator.

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

De eerste regel geeft `$a` een waarde. Daarom gebruikt de expressie `$a // 'gamma'` de huidige waarde van `$a`. De variabele `$b` is anders. Hij heeft geen waarde. Daarom geeft `$b // 'delta'` de waarde aan de rechterkant. Het programma print `delta`.

## //=

Samen maken `//` en `=` de `//=` operator. Die kent alleen een waarde toe als de variabele niet gedefinieerd is.

```raku
my $x;
$x //= 42;
say $x; # 42
```

{% include nav.html %}
