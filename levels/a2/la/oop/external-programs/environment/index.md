---
title: Ambitus
translations_gpt:
---

{% include menu.html %}

Omne programma cum serie _variabilium ambitus_ incipit. Quaeque est valor cum nomine. Exempla quaedam sunt `HOME`, `PATH` et `USER`. Systema operativum hos valores programmati dat. In Raku eos in mappa dynamica `%*ENV` invenis:

```raku
say %*ENV<HOME>; # directoria domestica, exempli gratia /home/anna
```

Variabilem ambitus per nomen eius legis. Nomen ut clavem in `%*ENV` adhibe. `%*ENV` est mappa ordinaria. Itaque etiam probare potes an variabilis posita sit. Eam etiam mutare potes pro programmatibus quae incipis:

```raku
%*ENV<GREETING> = 'Hello';
say %*ENV<GREETING>; # Hello
```

Clavem in `%*ENV` ponere potes. Tum clavis pars ambitus fit. Nunc programma per `run` vel `shell` incipis. Hoc programma est filius programmatis tui. Omne programma filium eundem ambitum accipit. Hoc modo configurationem ad programma filium transmittis:

```raku
%*ENV<GREETING> = 'Hello';

my $proc = run 'sh', '-c', 'echo $GREETING', :out;
say $proc.out.slurp(:close).chomp; # Hello
```

Programma tuum variabilem ponit *antequam* filium incipit. Hic `run` interpretem ut filium incipit. Interpres est programma quod imperata legit et currit. Hic interpres iam `GREETING` in suo ambitu habet. Itaque valorem per `echo` rursus imprimere potest. Hoc modo quamlibet variabilem ponere potes. Tum ad omne programma pervenit quod postea incipis.

Twigil `*` tibi ostendit: `%*ENV` est variabilis dynamica. Twigil est signum post sigillum. Etiam `$*OUT` est variabilis dynamica. Eam in parte de introitu et exitu cognovisti. Quaedam aliae variabiles cum stella tibi de programmate currenti narrant. `@*ARGS` argumenta lineae imperandi continet. Sunt valores post nomen programmatis in imperato. `$*PROGRAM-NAME` est nomen ipsius scripti. Simul hae variabiles programmati dicunt quomodo inceperit.

{% include nav.html %}
