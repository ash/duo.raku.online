---
title: La objekto Proc
translations_gpt:
---

{% include menu.html %}

Ĉiu voko de `run` aŭ `shell` redonas objekton `Proc`. Ĝi estas malgranda registro pri la programo. Ĝi diras al vi, kiu programo ruliĝis kaj kiel ĝi finiĝis. En la antaŭaj temoj, ni uzis ĝian tenilon `.out` por legi eligon. Sed `Proc` tenas pli ol tion.

La plej utila parto estas la **elirkodo**. Ĝi estas malgranda entjero. Programo redonas ĝin al tiu, kiu lanĉis ĝin. Per ĉi tiu nombro, la programo diras, ĉu ĝi funkciis. `0` signifas sukceson. Ĉiu alia nombro signifas malsukceson. La programo mem elektas ĉi tiun malsukcesan kodon. `.exitcode` donas al vi la nombron:

```raku
my $proc = run 'sh', '-c', 'exit 3';
say $proc.exitcode; # 3
```

Ofte vi volas scii nur jes aŭ ne. Ĉu ĝi funkciis? Por tio, `Proc` estas vera, kiam la elirkodo estas `0`. Alie, ĝi estas malvera. Do vi povas testi la `Proc` rekte:

```raku
my $proc = run 'ls', '/', :out;
$proc.out.slurp(:close);
say $proc ?? 'ok' !! 'failed'; # ok
```

`Proc` ankaŭ memoras la komandon, kiun ĝi lanĉis. Vi trovas ĝin en `.command`:

```raku
my $proc = run 'echo', 'hi', :out;
$proc.out.slurp(:close);
say $proc.command; # (echo hi)
```

Atentu unu aferon. Foje komando malsukcesas. Kio okazas, se vi simple **ignoras** la `Proc`, kiun ĝi redonas? Tiam Raku levas escepton. Escepto estas eraro, kiu haltigas la programon. Raku ne lasas la malsukceson resti kaŝita:

```raku
run 'sh', '-c', 'exit 1';
# mortas: The spawned command 'sh' exited unsuccessfully (exit code: 1, signal: 0)
```

Elirkodo alia ol `0` kutime signifas problemon. Do malsukcesa `Proc` ĵetas escepton, se vi forĵetas ĝin. Tio okazas, kiam la `Proc` eliras el sia amplekso. Tiam neniu kodo plu povas atingi ĝin. Ne temas pri kontrolo de la elirkodo. Temas pri *forĵeto* de la rezulto. Simple metu la `Proc` en variablon. Tio sufiĉas por eviti la escepton. Vi eĉ ne devas rigardi la variablon denove.

```raku
my $proc = run 'sh', '-c', 'exit 1'; # neniu eraro, kvankam ĝi malsukcesis
# …kaj $proc neniam estas uzata denove
```

Do, ĉu vi *atendas*, ke komando povas malsukcesi? Tiam tenu ĝian `Proc`. Kiam vi volas scii, kio okazis, rigardu `.exitcode`. Aŭ testu la `Proc` kiel Boolean valoron.

{% include nav.html %}
