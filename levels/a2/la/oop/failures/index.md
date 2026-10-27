---
title: Defectus molles
translations_gpt:
---

{% include menu.html %}

Exceptio ex `die` omnia statim sistit. Interdum hoc nimium est. Fortasse subprogramma effectum dare non potest. Hoc problema nuntiare debet. Sed vocans decernere debet an programma sistat. Vocans est codex qui subprogramma vocavit. Ad hunc casum Raku _defectus molles_ habet. Eos per `fail` facis.

Subprogramma `fail` vocare potest. Tum exceptionem statim non iacit. Loco eius obiectum speciale `Failure` vocanti reddit. `Failure` est valor cum errore intus. Indefinitum est. Itaque vocans id tacite inspicere potest:

```raku
sub divide($a, $b) {
    fail 'cannot divide by zero' if $b == 0;
    return $a / $b;
}

say divide(10, 2);         # 5
say divide(10, 0).defined; # False
```

Prima vocatio operatur et `5` reddit. Secunda vocatio deficit. `Failure` reddit. Pro hoc obiecto `defined` dat `False`. Itaque vocans effectum probare potest antequam eo utatur.

Cur `Failure` _mollis_ vocatur? Vera exceptio iacta fit solum uno casu. Hoc fit cum eo ut valore sine probatione uteris. Sed id tractare potes, exempli gratia probatione `defined`. Tum tacitum manet. Itaque subprogramma problema nuntiare potest. Non necesse est totum programma sistere.

## Hoc iam scis

Raku hoc genus defectus in tempus posterius movet. Non solum `fail` hoc modo operatur. Prius in hac parte eandem ideam bis vidisti.

**Divisio per nihil** valorem tacite facit. Exceptionem solum iacit cum valore revera uteris:

```raku
my $x = 1 / 0;   # nullus adhuc error
say $x;           # solum hic iacit, cum valor adhibetur
```

**Programma externum deficiens** `Proc` reddit. Exceptionem solum uno casu iacit. Hoc fit cum `Proc` sine tractatione abicis. Serva `Proc` et inspice id. Tum valor tacitus manet:

```raku
run 'sh', '-c', 'exit 1';   # Proc deficiens abicitur, itaque hoc iacit
```

Utroque casu problema programma non statim sistit. Valor fit. Hunc valorem inspicere potes. In exceptionem iactam solum duobus casibus vertitur. Eo sine probatione uteris, aut eum neglegis. Argumentum [Non omnis error statim apparet](/la/oop/try/deferred-errors) ambo exempla simul ostendit.

{% include nav.html %}
