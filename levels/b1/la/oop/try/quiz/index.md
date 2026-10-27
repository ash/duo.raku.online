---
title: 'Quiz — `try`'
translations_gpt:
---

{% include menu.html %}

Quid haec programma imprimit?

```raku
my $r = try {
    die 'Boom!';
    say 'inside';
};

say 'outside';
```

{:.quiz}
1 | outside
0 | inside
0 | inside, deinde outside
0 | Boom!
0 | errorem

{% include quiz.html %}

<div class="extended-explanation">

Duae res hic fiunt. Primum `die` reliquam partem clausulae `try` statim sistit. Itaque linea `say 'inside'` numquam currit, et nihil ex clausula imprimitur. Secundo `try` exceptionem capit, itaque ipsum programma non sistit. Post clausulam pergit, et `say 'outside'` ut solet currit. Itaque sola linea impressa est `outside`. Si inspiceres, videres `$r` indefinitum esse. Nuntius `Boom!` in `$!` exspectaret.

</div>

{% include nav.html %}
