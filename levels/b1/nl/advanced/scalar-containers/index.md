---
title: Scalaire containers
translations_gpt:
---

{% include menu.html %}

Zoals de naam al zegt, bewaren scalaire containers enkele, of scalaire, waarden. Deze containers hebben het `$`-sigil.

Hier is een heel eenvoudige en directe manier om een scalar te gebruiken:

```raku
my $lang = 'Raku';
```

De variabele `$lang` is een scalaire container.

Standaard beperken scalaire containers het type van hun gegevens niet. Je kunt er dus een waarde van elk type in bewaren. Hier is de eenvoudigste manier om dat te laten zien. Je kunt dezelfde variabele gebruiken voor een geheel getal en daarna voor een string:

```raku
my $value = 42;
$value = 'forty-two';
```

De auteur moedigt je niet aan om zo programma's te schrijven.

Intern betekent dit het volgende. Standaard kan een nieuwe container waarden van het type `Any` bewaren. `Any` is het basistype van de meeste andere typen, zoals `Int` of `Str`.

{% include nav.html %}
