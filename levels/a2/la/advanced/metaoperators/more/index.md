---
title: Crux, hyper, et negati
translations_gpt:
---

{% include menu.html %}

Raku plures meta-operatores habet, non tantum reductionem et zip. Hic tres ex eis discis.

## Cross — `X`

Meta-operator cross `X` duas listas sumit et paria facit. Hic **omne** elementum unius listae par facit cum **omni** elemento alterius. Nomen huius est productum Cartesianum:

```raku
say <a b> X <1 2>; # ((a 1) (a 2) (b 1) (b 2))
```

Sicut zip, `X` etiam operatorem accipere potest. Tum operator in quoque pari agit. `X~` quodque par in filum coniungit. `X*` duos numeros multiplicat:

```raku
say <a b> X~ <1 2>;         # (a1 a2 b1 b2)
say (1, 2, 3) X* (10, 100); # (10 100 20 200 30 300)
```

Zip duas listas simul percurrit. Cross eas omnibus modis possibilibus coniungit.

## Hyper — `»…«`

Meta-operator hyper operatorem in **quoque elemento** listae adhibet. Operator inter sagittas `»…«` stat. Cum solis characteribus ASCII, `>>…<<` scribis. Cum duabus listis elementum per elementum operatur, sicut zip. Interdum una pars tantum unum valorem habet. Tum hunc valorem cum omni elemento listae adhibet:

```raku
say (1, 2, 3) »+» (10, 20, 30); # (11 22 33)
say (1, 2, 3) »*» 2;            # (2 4 6)
```

Duae sagittae in diversas partes spectare possunt. Directio magni momenti est cum listae diversas longitudines habent. Si sagitta **ad** listam spectat, Raku hanc listam repetere potest. Tum tam longa est quam altera lista. Hic sunt quattuor combinationes in ASCII, cum `<<` et `>>`:

* `>>op<<` — Raku nullam listam repetit. Listae eandem longitudinem habere debent. Si non, errorem accipis.
* `>>op>>` — Raku listam **dextram** repetit. Tum tam longa est quam sinistra.
* `<<op<<` — Raku listam **sinistram** repetit. Tum tam longa est quam dextra.
* `<<op>>` — Raku listam **breviorem** repetit. Tum tam longa est quam longior.

```raku
say (1, 2, 3, 4) <<+>> (10, 20); # (11 22 13 24)  — 10, 20 repetitur ad 10, 20, 10, 20
```

Est etiam forma cum uno tantum operando. Methodum in omni elemento vocat. `>>.uc` quodque filum in litteras maiusculas mutat:

```raku
say <raku perl>>>.uc; # (RAKU PERL)
```

Operatio hyper Raku etiam aliquid plus dicit. Raku opus paralleliter facere *potest*. Tum plures partes operis simul currunt. Postea methodum similem `.hyper` disces. Eam in [sectione de programmatione concurrenti](/la/paradigms/hyper-race) invenies.

## Negatus — `!`

Pone `!` ante operatorem comparationis. Tum eventum contrarium accipis. Iam `!=` cognoscis, id est “non aequalis”. Est tantum hic meta-operator cum `==`. Alii operatores etiam `True` vel `False` dant, ut `eq` et `%%`. Meta-operator cum eis eodem modo operatur:

```raku
say 3 != 4;      # True
say 'a' !eq 'b'; # True  — non aequales ut fila
say 5 !%% 2;     # True  — 5 non est divisibilis per 2
```

Ergo `$a !op $b` est tantum modus mundior scribendi `!($a op $b)`.

Raku hoc de industria facit. Quaedam linguae de industria parvae et simplices sunt, ut Esperanto. Esperanto pro quaque re unum modum regularem habere vult. Raku non talis est. Libenter tibi plures modos dat. Ergo Raku negatum `!eq` habet. Etiam operatorem specialem `ne` habet. Ambo exacte idem significant:

```raku
say 'a' ne 'b'; # True — idem experimentum ac 'a' !eq 'b'
```

{% include nav.html %}
