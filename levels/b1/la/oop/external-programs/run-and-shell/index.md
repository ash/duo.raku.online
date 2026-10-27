---
title: run et shell
translations_gpt:
---

{% include menu.html %}

Duo modi sunt programma externum incipiendi. Functio `run` imperatum et argumenta eius ut valores **separatos** accipit. Programma directe currit, sine interprete:

```raku
run 'echo', 'hello';
```

Hoc programma `echo` cum uno argumento `hello` currit, itaque `hello` imprimit. Argumenta separatim traduntur, itaque interpres spatia aut characteres speciales male legere non potest. Ideo `run` electio praedefinita tuta est.

Functio `shell` aliter operatur. Ea **unam chordam** ad interpretem systematis tradit, qui eam legit et currit. Hoc tibi permittit facultates interpretis adhibere, ut fistulas et redirectionem:

```raku
shell 'echo hello | tr a-z A-Z';
```

Hic interpres `echo` currit et exitum eius per fistulam ad `tr` mittit. Deinde `HELLO` imprimit. Hoc commodum est, sed cavere debes. Ipse interpres decernit quid chorda significet. Itaque periculosum est imperatum `shell` ex introitu aedificare cui non confidis. Utere `run` nisi facultates interpretis vere requiris.

Ambae functiones obiectum `Proc` reddunt, quod describit quomodo programma finierit. Ex more programma inceptum exitum programmatis tui communicat. Itaque quod imprimit in screen apparet. Ut illum exitum potius capias, eum petere debes. De hoc agit argumentum sequens.

{% include nav.html %}
