---
title: 'Solutio: Ansam functioni trade'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

## Codex

```raku
sub log-line($fh, $message) {
    $fh.say($message);
}

my $fh = open 'log.txt', :w;
log-line($fh, 'started');
log-line($fh, 'working');
log-line($fh, 'done');
$fh.close;

print slurp 'log.txt';
```

🦋 Inveni codicem fontem in archivo [pass-a-handle.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/file-handles/pass-a-handle.raku).

## Exitus

```
started
working
done
```

## Commentarii

1. `open` tractabulum reddit. Hoc tractabulum solum valor in `$fh` est. Itaque id ad `log-line` ut argumentum tradere potes. Idem cum chorda aut numero facis. Intra subprogramma `$fh.say` per hoc idem tractabulum apertum scribit.

1. Tractabulum per omnes tres vocationes apertum manet. Itaque quodque `log-line` lineam ad finem eiusdem archivi addit. Deinde `close` omnia in discum scribit. `slurp` tres lineas retro legit.

1. Ideo tractabula facile cum functionibus coniungere potes. Functio tractabulum accipere potest. In id scribere aut ex eo legere potest. Non curat cuius archivi tractabulum sit. Codex qui functionem vocat archivum eligit. Hoc facit cum archivum aperit.

{% include nav.html %}
