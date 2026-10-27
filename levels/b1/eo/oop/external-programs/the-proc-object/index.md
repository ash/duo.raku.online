---
title: La objekto Proc
translations_gpt:
---

{% include menu.html %}

Ĉiu voko de `run` aŭ `shell` redonas objekton `Proc`. Ĝi estas malgranda registro, kiu priskribas, kiu programo ruliĝis kaj kiel ĝi finiĝis. La antaŭaj temoj uzis ĝian tenilon `.out` por legi eligon. Sed `Proc` tenas pli ol tion.

La plej utila parto estas la **elirkodo**. Per malgranda entjero, programo diras al tiu, kiu lanĉis ĝin, ĉu ĝi sukcesis. `0` signifas sukceson. Ĉiu alia nombro estas malsukcesa kodo, kiun la programo mem elektas. `.exitcode` donas al vi tiun nombron:

```raku
my $proc = run 'sh', '-c', 'exit 3';
say $proc.exitcode; # 3
```

Kutime vi volas scii nur jes aŭ ne: ĉu ĝi funkciis? Por tio, `Proc` estas simple vera, kiam la elirkodo estas `0`. Alie, ĝi estas malvera. Do vi povas testi ĝin rekte:

```raku
my $proc = run 'ls', '/', :out;
$proc.out.slurp(:close);
say $proc ?? 'ok' !! 'failed'; # ok
```

`Proc` ankaŭ memoras, kiun komandon ĝi lanĉis, en `.command`:

```raku
my $proc = run 'echo', 'hi', :out;
$proc.out.slurp(:close);
say $proc.command; # (echo hi)
```

Estas unu afero, al kiu vi devas atenti. Se komando malsukcesas kaj vi simple **ignoras** la redonitan `Proc`, Raku levas escepton. Ĝi ne lasas la malsukceson pasi nerimarkita:

```raku
run 'sh', '-c', 'exit 1';
# mortas: The spawned command 'sh' exited unsuccessfully (exit code: 1, signal: 0)
```

Elirkodo alia ol nulo kutime signifas, ke io misiris. Do se vi forĵetas malsukcesan `Proc`, ĝi ĵetas escepton. Tio okazas, kiam ĝi eliras el sia amplekso. La kaŭzo estas *forĵeti* la rezulton, ne ignori la elirkodon. Simple konservi la `Proc` en variablo sufiĉas por eviti la escepton. Vi eĉ ne devas rigardi ĝin denove.

```raku
my $proc = run 'sh', '-c', 'exit 1'; # neniu eraro, kvankam ĝi malsukcesis
# …kaj $proc neniam estas uzata denove
```

Do se vi *atendas*, ke komando eble malsukcesos, tenu ĝian `Proc`. Poste rigardu `.exitcode`, aŭ testu ĝin kiel Boolean valoron. Faru tion, kiam ajn vi volas scii, kio okazis.

{% include nav.html %}
