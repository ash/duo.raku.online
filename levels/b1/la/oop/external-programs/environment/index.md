---
title: Ambitus
translations_gpt:
---

{% include menu.html %}

Omne programma cum serie _variabilium ambitus_ incipit. Sunt valores cum nominibus, ut `HOME`, `PATH` vel `USER`, quos systema operativum praebet. In Raku in mappa dynamica `%*ENV` sunt:

```raku
say %*ENV<HOME>; # directoria domestica, exempli gratia /home/anna
```

Ut variabilem ambitus legas, nomen eius ut clavem in `%*ENV` adhibes. Quia `%*ENV` mappa ordinaria est, etiam probare potes utrum variabilis posita sit. Eam etiam mutare potes pro programmatibus quae incipis:

```raku
%*ENV<GREETING> = 'Hello';
say %*ENV<GREETING>; # Hello
```

Cum clavem in `%*ENV` ponis, pars ambitus fit. Omne programma quod deinde per `run` vel `shell` incipis hunc ambitum quoque accipit. Hoc modo configurationem ad programma filium transmittis:

```raku
%*ENV<GREETING> = 'Hello';

my $proc = run 'sh', '-c', 'echo $GREETING', :out;
say $proc.out.slurp(:close).chomp; # Hello
```

Variabilis in ambitu programmatis tui ponitur *antequam* filius incipit. Itaque interpres quem `run` incipit iam `GREETING` in suo ambitu habet. Valorem per `echo` rursus imprimere potest. Quaelibet variabilis quam hoc modo ponis ad omne programma pervenit quod postea incipis.

Twigil `*` ostendit `%*ENV` variabilem dynamicam esse. Talis est etiam `$*OUT`, quam in parte de introitu et exitu vidisti. Paucae aliae variabiles cum stella mundum programmatis currentis describunt. `@*ARGS` argumenta lineae imperandi continet, et `$*PROGRAM-NAME` est nomen ipsius scripti. Simul programma adiuvant ut contextum intellegat in quo coepit.

{% include nav.html %}
