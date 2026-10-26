---
title: Tipi a livello macchina
---

{% include menu.html %}

I nomi dei tipi nativi sono in minuscolo: `int`, `num` e `str`. Li usi per dichiarare una variabile, proprio come `Int` o `Str`:

```raku
my int $i = 42;
my num $n = 3.14e0;
say $i; # 42
say $n; # 3.14
```

Un valore nativo corrisponde direttamente a un registro o a una parola della macchina. Non ha l'oggetto wrapper che un normale valore Raku ha sempre. Questo rende i tipi nativi più veloci e più piccoli in memoria. È importante nei cicli brevi che fanno molti calcoli, e negli array grandi.

Devi sapere subito una cosa: una variabile nativa non può mai essere indefinita. Una normale variabile `Int` inizia come `(Int)` indefinito. Un `int` nativo, invece, inizia da **zero**:

```raku
say (my Int $a); # (Int)
say (my int $b); # 0
```

Lo stesso vale per gli array nativi. Li dichiari mettendo il tipo nativo prima della variabile `@`:

```raku
my int @numbers = 10, 20, 30;
say @numbers.sum; # 60
```

Un array così memorizza i suoi elementi come interi macchina grezzi, non come oggetti `Int` boxed. Quindi usa meno memoria. Quando chiedi a un valore nativo informazioni su sé stesso, Raku ne fa automaticamente il _boxing_. Mette il valore nel tipo completo corrispondente. Per questo `(my int $b).WHAT` mostra `(Int)`.

{% include nav.html %}
