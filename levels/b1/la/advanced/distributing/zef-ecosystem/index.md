---
title: zef et oecosystema
translations_gpt:
---

{% include menu.html %}

`zef` est installator modulorum Raku. Iam eo usus es ut modulos nomine installares. Etiam cum directorio distributionis locali operatur. Intra distributionem eam directe probare et installare potes:

```
zef test .
zef install .
```

`zef test .` archiva sub `t/` exsequitur. `zef install .` distributionem in Raku tuum installat, ut alia programmata eam per `use` adhibere possint. Installatio nomine, ut in `zef install Cro`, idem facit. Sed prius distributionem ex systemate deponit.

Distributionem tuam **publicare** potes, ut alii eam nomine installare possint. Ad hoc eam in systema imponis. Instrumentum usitatum ad hoc est `fez`:

```
fez upload
```

Hoc distributionem praesentem componit et in systema Raku mittit. Postea `zef install Maths::Simple` pro omnibus operabitur.

> Haec mandata `zef`/`fez` installata et accessum ad retia requirunt. Impositio etiam rationem in systemate requirit.

Itaque vita moduli communicati tres gradus habet. Eum cum `META6.json` disponis et per `zef test` probas. Deinde eum per `fez upload` publicas. Ab eo tempore solum unum aliud nomen est quod quisque per `zef install` installare potest.

{% include nav.html %}
