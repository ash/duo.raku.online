---
title: Tipi a livello macchina
---

{% include menu.html %}

I tipi nativi hanno nomi in minuscolo: `int`, `num` e `str`. Dichiari una variabile con questi tipi proprio come con `Int` o `Str`:

```raku
my int $i = 42;
my num $n = 3.14e0;
say $i; # 42
say $n; # 3.14
```

Un valore nativo corrisponde direttamente a un registro o a una parola della macchina. Sono piccoli posti per i dati dentro il computer. Un normale valore Raku ha intorno un oggetto wrapper. Un valore nativo non ha wrapper. Così i tipi nativi sono più veloci e occupano meno memoria. Questo è importante negli array grandi. È importante anche nei cicli brevi che fanno molti calcoli.

C'è una cosa da sapere subito. Una variabile nativa non è mai indefinita. Una normale variabile `Int` all'inizio è indefinita. `say` la mostra come `(Int)`. Ma un `int` nativo inizia da **zero**:

```raku
say (my Int $a); # (Int)
say (my int $b); # 0
```

Lo stesso vale per gli array nativi. Per dichiararne uno, scrivi il tipo nativo prima della variabile `@`:

```raku
my int @numbers = 10, 20, 30;
say @numbers.sum; # 60
```

Un array così conserva i suoi elementi come semplici interi macchina. Non sono oggetti `Int` completi. Così l'array usa meno memoria. Puoi chiedere a un valore nativo il suo tipo. Allora Raku lo mette automaticamente nel tipo completo corrispondente. Diciamo che il valore è _boxed_. Per questo `(my int $b).WHAT` mostra `(Int)`.

{% include nav.html %}
