---
title: Crux, hyper, et negati
translations_gpt:
---

{% include menu.html %}

Praeter reductionem et zip, Raku plures alios meta-operatores habet. Tres ex eis nunc cognoscere utile est.

## Cross — `X`

Meta-operator cross `X` duas listas accipit. **Omne** elementum unius cum **omni** elemento alterius coniungit. Hoc productum Cartesianum vocatur:

```raku
say <a b> X <1 2>; # ((a 1) (a 2) (b 1) (b 2))
```

Sicut zip, operatorem involvere potest, qui deinde in quoque pari agit. `X~` quodque par in filum coniungit, et `X*` valores multiplicat:

```raku
say <a b> X~ <1 2>;         # (a1 a2 b1 b2)
say (1, 2, 3) X* (10, 100); # (10 100 20 200 30 300)
```

Zip duas listas simul percurrit, cross autem eas omnibus modis possibilibus coniungit.

## Hyper — `»…«`

Meta-operator hyper operatorem ad **unumquodque elementum** listae applicat. Operator intra uncos acutos `»…«` stat, vel intra formam ASCII `>>…<<`. Cum duabus listis elementum per elementum operatur, sicut zip. Cum uno valore ab una parte, illum valorem per totam listam extendit:

```raku
say (1, 2, 3) »+» (10, 20, 30); # (11 22 33)
say (1, 2, 3) »*» 2;            # (2 4 6)
```

Duae sagittae non debent in eandem partem spectare. Directio earum decernit quid fiat cum listae diversas longitudines habent. Si sagitta **ad** listam spectat, illa lista repeti potest ut alteri respondeat. Hic sunt quattuor combinationes, in ASCII cum `<<` et `>>` scriptae:

* `>>op<<` — nulla lista repetitur, itaque listae iam eandem longitudinem habere debent, aut error est;
* `>>op>>` — lista **dextra** repetitur ut sinistrae respondeat;
* `<<op<<` — lista **sinistra** repetitur ut dextrae respondeat;
* `<<op>>` — lista **brevior** repetitur ut longiori respondeat.

```raku
say (1, 2, 3, 4) <<+>> (10, 20); # (11 22 13 24)  — 10, 20 repetitur ad 10, 20, 10, 20
```

Est etiam forma unaria, cum uno tantum operando. Methodum in omni elemento vocat. `>>.uc` quodque filum in maiusculas convertit:

```raku
say <raku perl>>>.uc; # (RAKU PERL)
```

Operationes hyper etiam ostendunt opus paralleliter fieri *posse*. Methodum cognatam `.hyper` postea videbis, in [sectione de programmatione concurrenti](/la/paradigms/hyper-race).

## Negatus — `!`

Si `!` ante operatorem comparationis ponis, eventum contrarium accipis. Notus `!=` (non aequalis) est exacte hic meta-operator cum `==` adhibitus. Idem operatur pro aliis operatoribus Booleanis, ut `eq` et `%%`:

```raku
say 3 != 4;      # True
say 'a' !eq 'b'; # True  — non aequales ut fila
say 5 !%% 2;     # True  — 5 non est divisibilis per 2
```

Breviter, `$a !op $b` est tantum modus elegantior scribendi `!($a op $b)`.

Hoc de industria est. Quaedam linguae, ut Esperanto, de industria parvae et simplices sunt. Pro quaque re unum modum regularem habere volunt. Raku non talis est et libenter tibi plures modos dat. Ergo negatus `!eq` iuxta operatorem specialem `ne` exstat. Ambo exacte idem significant:

```raku
say 'a' ne 'b'; # True — idem experimentum ac 'a' !eq 'b'
```

{% include nav.html %}
