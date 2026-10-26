---
title: Operatores ab usore definiti
---

{% include menu.html %}

In Raku operatores tantum subroutinae cum nominibus specialibus sunt. Ergo operatores tuos facere potes. Ad hoc nomina categoriarum adhibes ex pagina [Types of Raku operators](/la/advanced/operator-types). Haec sunt `prefix`, `infix`, `postfix`, et cetera.

Ut operatorem declares, scribe `sub`. Nomen eius tres partes habet. Primum venit categoria. Deinde venit colon. Postremo venit symbolum operatoris in uncis angularibus. Hic est novus operator infixus. Nomen eius est `plus`:

```raku
sub infix:<plus>($a, $b) {
    $a + $b
}

say 3 plus 4; # 7
```

Postea `plus` inter duos operandos suos adhibes. Exacte sicut operator infixus praeconstruitus operatur.

Operator postfixus post operandum suum venit. Factorialis exemplum typicum est. Hic est ut operator postfixus `!`. [Meta-operatorem reductionis](/la/advanced/metaoperators/reduction) adhibet quem iam cognoscis:

```raku
sub postfix:<!>(Int $n) {
    [*] 1..$n
}

say 5!; # 120
```

Plus quam litteras et interpunctionem ASCII adhibere potes. Symbolum operatoris quilibet character esse potest. Hic operator praefixus signum sectionis `§` adhibet. Numerum duplicat:

```raku
sub prefix:<§>($x) {
    $x * 2
}

say §5; # 10
```

Operatores tui instrumentum potens sunt. Ergo eos cum cura adhibe. Operator bonus codicem similem linguae argumenti sui facit. Operator insolitus tantum proximum lectorem confundit.

{% include nav.html %}
