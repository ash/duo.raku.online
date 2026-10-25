---
title: 'Introspectio cum `WHAT`'
---

{% include menu.html %}

Genus datorum in variabili videre potes. Methodum `WHAT` in ea voca:

```raku
my $n = 42;
my $s = '42';
say $n.WHAT; # (Int)
say $s.WHAT; # (Str)
```

Raku genus in parenthesibus imprimit. Id in commentariis videre potes. Exempli gratia, `(Int)` vel `(Str)`.

Methodum etiam directe in litterali vocare potes. Litterale est valor in codice scriptus. Exempli gratia:

```raku
say 42.WHAT;      # (Int)
say (-1).WHAT;    # (Int)
say 'Hello'.WHAT; # (Str)
say True.WHAT;    # (Bool)
```

Nota parentheses circa `-1`. Hic eas requirimus. Specta `say -1.WHAT` sine parenthesibus. Hic Raku primum `1.WHAT` vocat. Deinde signum minus ante eventum ponere conatur. Hoc ad exceptionem ducit, genus erroris.

{% include nav.html %}
