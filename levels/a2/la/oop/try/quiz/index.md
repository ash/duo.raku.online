---
title: 'Quiz — `try`'
translations_gpt:
---

{% include menu.html %}

Quid hoc programma imprimit?

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

Duae res hic fiunt. Primum `die` reliquam partem clausulae `try` statim sistit. Itaque programma numquam ad lineam `say 'inside'` pervenit. Programma nihil ex clausula imprimit. Secundo `try` exceptionem capit, errorem ex `die`. Itaque ipsum programma non sistit. Post clausulam pergit. `say 'outside'` ut solet currit. Itaque programma solum unam lineam imprimit: `outside`. Etiam `$r` et `$!` inspicere potes. `$r` indefinitus est. Nuntius `Boom!` in `$!` exspectat.

</div>

{% include nav.html %}
