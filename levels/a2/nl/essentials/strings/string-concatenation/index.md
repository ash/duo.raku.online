---
title: String concatenatie
---

{% include menu.html %}

Je kunt twee strings samenvoegen. Dan krijg je een nieuwe, langere string. We noemen dit stringconcatenatie. In Raku concateneer je strings met een operator. Kun je de naam raden? Het is de concatenatie-operator! Deze operator is een tilde: `~`. Om twee strings te concateneren, zet je `~` ertussen:

```raku
say 'Hello, ' ~ 'World!';
```

Soms staan de strings in variabelen. Dan kunnen we ‘de variabelen concateneren’. Nou ja, eigenlijk concateneren we de strings in deze variabelen:

```raku
my $greeting = 'Hello, ';
my $who = 'World!';

say $greeting ~ $who;
```

Je kunt het resultaat ook in een nieuwe variabele zetten:

```raku
my $greeting = 'Hello, ';
my $who = 'World!';
my $message = $greeting ~ $who;

say $message;
```

## Concatenatie en toewijzing in één stap

Soms wil je een string aan het eind van een variabele toevoegen. Gebruik dan deze vorm:

```raku
# In plaats van 
$str = $str ~ $another-str;

# gebruik:
$str ~= $another-str;
```

{% include nav.html %}
