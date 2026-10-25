---
title: 'Introspectio cum `WHAT`'
---

{% include menu.html %}

Ut genus datorum in variabili videas, methodum `WHAT` in ea voca:

```raku
my $n = 42;
my $s = '42';
say $n.WHAT; # (Int)
say $s.WHAT; # (Str)
```

Ut in commentariis videre potes, genus in parenthesibus imprimitur. Exempli gratia, `(Int)` vel `(Str)`.

Methodum in litterali ipso vocare nullum problema est. Exempli gratia:

```raku
say 42.WHAT;      # (Int)
say (-1).WHAT;    # (Int)
say 'Hello'.WHAT; # (Str)
say True.WHAT;    # (Bool)
```

Nota quod `-1` in parenthesibus ponimus. Sine eis, `say -1.WHAT` signum minus ante eventum `1.WHAT` ponere conaretur. Hoc ad exceptionem ducit.

{% include nav.html %}
