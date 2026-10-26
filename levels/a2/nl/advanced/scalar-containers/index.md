---
title: Scalaire containers
translations_gpt:
---

{% include menu.html %}

Scalaire containers bewaren enkele, of scalaire, waarden. Dat zegt de naam al. Zulke containers hebben het `$`-sigil.

Hier is een heel eenvoudig gebruik van een scalar:

```raku
my $lang = 'Raku';
```

De variabele `$lang` is een scalaire container.

Standaard beperkt een scalaire container het type van de gegevens niet. Dus kun je er een waarde van elk type in bewaren. Hier is het eenvoudigste voorbeeld. Eerst bewaart een variabele een geheel getal. Daarna bewaart dezelfde variabele een string:

```raku
my $value = 42;
$value = 'forty-two';
```

De auteur raadt niet aan om zo code te schrijven.

Binnen Raku betekent dit één ding. Standaard kan een nieuwe container waarden van het type `Any` bewaren. `Any` is het basistype voor de meeste andere typen. `Int` en `Str` komen bijvoorbeeld van `Any`.

{% include nav.html %}
