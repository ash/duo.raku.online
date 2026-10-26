---
title: Quiz — do
translations_gpt:
---

{% include menu.html %}

¿Qué imprime este programa?

```raku
my $s = do given -3 {
    when $_ < 0 { 'neg' }
    default     { 'nonneg' }
};
say $s;
```

{:.quiz}
1 | neg
0 | nonneg
0 | -3
0 | Nil

{% include quiz.html %}

<div class="extended-explanation">

`do` también funciona delante de estructuras de control, no solo delante de bloques simples. Aquí, `do given` convierte todo el `given`/`when` en una expresión. El tópico `-3` coincide con `$_ < 0`. Así que el valor de la expresión es `'neg'`. El programa lo guarda en `$s`.

</div>

{% include nav.html %}
