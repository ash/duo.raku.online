---
title: Operatores ab usore definiti
---

{% include menu.html %}

Operatores in Raku revera tantum subroutinae cum nominibus specialibus sunt. Hoc significat te operatores tuos definire posse. Nomina categoriarum adhibes ex pagina [Types of Raku operators](/la/advanced/operator-types): `prefix`, `infix`, `postfix`, et cetera.

Ut operatorem declares, scribe `sub` cum nomine speciali. Nomen est categoria, colon, et symbolum operatoris in uncis angularibus. Hic est novus operator infixus nomine `plus`:

```raku
sub infix:<plus>($a, $b) {
    $a + $b
}

say 3 plus 4; # 7
```

Postquam definitus est, `plus` inter duos operandos suos stat. Hoc exacte simile est cuilibet operatori infixo praeconstruito.

Operator postfixus post operandum suum venit. Factorialis exemplum classicum est. Hic est ut operator postfixus `!`. Super [meta-operatore reductionis](/la/advanced/metaoperators/reduction) constructus est, quem antea vidisti:

```raku
sub postfix:<!>(Int $n) {
    [*] 1..$n
}

say 5!; # 120
```

Non limitaris ad litteras et interpunctionem ASCII. Symbolum operatoris quilibet character esse potest. Hic operator praefixus signum sectionis, `§`, adhibet ut numerum duplicet:

```raku
sub prefix:<§>($x) {
    $x * 2
}

say §5; # 10
```

Operatores definire instrumentum potens est, ergo eo cum bono gustu utere. Operator bene electus codicem similem linguae argumenti sui reddere potest. Operator obscurus tantum proximum hominem confundit qui codicem legit.

{% include nav.html %}
