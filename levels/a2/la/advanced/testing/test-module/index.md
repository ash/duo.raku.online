---
title: Modulus Test
translations_gpt:
---

{% include menu.html %}

Ut instrumenta probandi habeas, scribe `use Test`. Probatio simplicissima est `ok`. Transit cum condicio eius vera est. Quaeque probatio etiam descriptionem habere potest:

```raku
use Test;

ok 1 == 1, 'one equals one';
ok 2 > 1,  'two is greater';

done-testing;
```

Hoc programma curre. Effectum in forma normali probationum imprimit. Hanc formam _TAP_ vocamus:

```
ok 1 - one equals one
ok 2 - two is greater
1..2
```

Pro quaque probatione quae transit, `ok` cum numero et descriptione eius vides. Probatio quae deficit `not ok` ostendit. Ultima linea, `1..2`, est _consilium_. Dicit quot probationes cucurrerint. Vocatio `done-testing` in fine hoc consilium sponte imprimit.

Interdum certum valorem exspectas. Tum `is` clarior est quam `ok`. Si probatio deficit, `is` duos valores ostendit. Valorem quem exspectas et valorem quem accipis ostendit:

```raku
use Test;

is 2 + 2, 4, 'addition works';

done-testing;
```

Hoc imprimit `ok 1 - addition works`. Nunc videamus quomodo `is` defectum nuntiet. Da `is` valorem exspectatum falsum:

```raku
use Test;

is 2 + 2, 5, 'addition works';

done-testing;
```

Nunc probatio deficit. Exitus prorsus ostendit quid falsum sit:

```
not ok 1 - addition works
# Failed test 'addition works'
# at test.raku line 3
# expected: '5'
#      got: '4'
1..1
# You failed 1 test of 1
```

Linea `not ok` defectum ostendit. Sub ea aliae lineae problema explicant. Valorem quem exspectas et valorem quem accipis ostendunt. Itaque, cum certum valorem requiris, `is` plus quam solum `ok` adiuvat.

Per `ok`, `is` et `done-testing` iam archivum probationum utile scribere potes. Argumentum sequens [ceteras comparationes](/la/advanced/testing/comparisons) ostendit.

{% include nav.html %}
