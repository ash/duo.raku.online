---
title: Quiz — do
translations_gpt:
---

{% include menu.html %}

¿Qué imprime el siguiente programa?

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

`do` funciona delante de estructuras de control, no solo de bloques simples. Aquí `do given` convierte todo el `given`/`when` en una expresión. El tópico `-3` coincide con `$_ < 0`, así que la expresión da `'neg'`. Este valor se guarda en `$s`.

</div>

{% include nav.html %}
