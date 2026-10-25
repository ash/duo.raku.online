---
title: String concatenatie
---

{% include menu.html %}

Als je twee strings hebt, kun je ze samenvoegen en een nieuwe, langere string krijgen. Dit heet stringconcatenatie. In Raku concateneer je strings met—raad eens?—de concatenatie-operator. Deze operator is een tilde, `~`. Om twee strings te concateneren, zet je `~` ertussen:

```raku
say 'Hello, ' ~ 'World!';
```

Als onze strings in variabelen staan, kunnen we ‘variabelen concateneren’. Nou ja, om precies te zijn, concateneren we de strings die in die variabelen staan:

```raku
my $greeting = 'Hello, ';
my $who = 'World!';

say $greeting ~ $who;
```

Of je kunt een nieuwe variabele maken die het resultaat van de concatenatie bewaart:

```raku
my $greeting = 'Hello, ';
my $who = 'World!';
my $message = $greeting ~ $who;

say $message;
```

## Concatenatie met toewijzing

Om een nieuwe string aan het eind van een variabele toe te voegen, gebruik je deze vorm:

```raku
# In plaats van 
$str = $str ~ $another-str;

# gebruik:
$str ~= $another-str;
```

{% include nav.html %}
