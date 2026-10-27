---
title: Defectus molles
translations_gpt:
---

{% include menu.html %}

Exceptionem per `die` iacere omnia statim sistit. Interdum id nimis durum est. Fortasse vis ut subprogramma nuntiet se effectum dare non potuisse. Sed vocans decernere debet utrum hoc fatale sit. Ad hoc Raku _defectus molles_ habet, quos per `fail` creas.

Cum subprogramma `fail` vocat, exceptionem non statim iacit. Loco eius obiectum speciale `Failure` vocanti reddit. `Failure` indefinitum est, itaque vocans id tacite inspicere potest:

```raku
sub divide($a, $b) {
    fail 'cannot divide by zero' if $b == 0;
    return $a / $b;
}

say divide(10, 2);         # 5
say divide(10, 0).defined; # False
```

Vocatio felix `5` reddit. Vocatio deficiens `Failure` reddit, et `defined` pro eo `False` dat. Itaque vocans effectum probare potest antequam eo utatur.

Cur `Failure` _mollis_ vocatur? Vera exceptio iacta fit solum uno casu. Hoc fit cum eo ut valore uteris neque id prius probas. Dum id tractas, exempli gratia `defined` probando, tacitum manet. Itaque subprogramma problema nuntiare potest neque totum programma sistit.

## Hoc iam vidisti

Hoc genus defectus dilati non solum ex `fail` venit. Prius in hac parte eandem ideam bis invenisti.

**Divisio per nihil** valorem tacite producit. Solum iacit cum illo valore revera uteris:

```raku
my $x = 1 / 0;   # nullus adhuc error
say $x;           # solum hic iacit, cum valor adhibetur
```

**Programma externum deficiens** `Proc` reddit. Solum iacit si id sine tractatione abicis. Si id servas et inspicis, valor tacitus manet:

```raku
run 'sh', '-c', 'exit 1';   # Proc deficiens abicitur, itaque hoc iacit
```

Utroque casu problema programma non sistit eo momento quo accidit. Loco eius fit valor quem inspicere potes. Exceptio iacta fit solum cum eo sine probatione uteris vel eum neglegis. Argumentum [Non omnis error statim apparet](/la/oop/try/deferred-errors) haec duo exempla iuxta se ostendit.

{% include nav.html %}
