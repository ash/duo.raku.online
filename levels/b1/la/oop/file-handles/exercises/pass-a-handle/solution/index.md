---
title: 'Solutio: Ansam functioni trade'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. Tractabulum quod `open` reddit solum valor est in `$fh` servatus. Itaque argumentum `log-line` esse potest, sicut quaelibet chorda aut numerus. Intra subprogramma `$fh.say` per illud idem tractabulum apertum scribit.

1. Tractabulum per omnes tres vocationes apertum manet. Itaque quodque `log-line` aliam lineam ad finem eiusdem archivi addit. Deinde `close` omnia in disco servat, et `slurp` tres lineas retro legit.

1. Ideo tractabula tam facile coniungi possunt. Functio tractabulum accipere et in id scribere, aut ex eo legere, potest. Non curat ad quod archivum tractabulum spectet. Codex qui functionem vocat id decernit cum archivum aperit.

{% include nav.html %}
