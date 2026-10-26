---
title: Phaseres blocorum
translations_gpt:
---

{% include menu.html %}

Phaseres pro toto programmate iam cognovisti. Raku etiam phaseres pro una copia vel una ansa habet. Ad vitam illius copiae vel ansae pertinent.

## Copiam intrare et ex ea exire

Phaser `ENTER` currit quotiens programma copiam intrat. Phaser `LEAVE` currit quotiens programma copiam relinquit. Locus eorum in copia nihil refert:

```raku
say 'before block';
{
    LEAVE say 'leaving';
    ENTER say 'entering';
    say 'inside';
}
say 'after block';
```

Specta output. `ENTER` primus currit, et `LEAVE` ultimus currit. Corpus copiae inter eos est:

```
before block
entering
inside
leaving
after block
```

`LEAVE` valde utilis est. Currit etiam cum copia mature finitur. Itaque ibi rem tuto liberare potes, exempli gratia archivum apertum.

Phaser totam copiam `{ }` habere potest, non solum unam sententiam. Etiam plures phaseres habere potes. Copia plus quam unum `LEAVE` habere potest. Tum ordine inverso currunt. Ultimus primus currit. Sicut cumulus operatur. Quod ultimum intrat, primum exit:

```raku
say 'open A';
{
    LEAVE {
        say 'close A';
    }
    say 'open B';
    LEAVE {
        say 'close B';
    }
    say 'work';
}
say 'done';
```

Programma rem `A` primam aperit. Eam ultimam claudit:

```
open A
open B
work
close B
close A
done
```

Hic ordo est “ultimum intrat, primum exit”. Ad purgationem exacte aptus est. Quod ultimum constituis, primum removes. Phaser `END` pro toto programmate eodem modo operatur. Plures copiae `END` etiam ordine inverso currunt.

## Phaseres pro ansis

Ansae tres alios phaseres habent. Gradus ansae signant. `FIRST` semel currit, ante primum gyrum. `LAST` semel currit, post ultimum gyrum. `NEXT` in fine cuiusque gyri currit:

```raku
for 1..3 {
    FIRST say '-- first';
    LAST  say '-- last';
    NEXT  say "-- next (was $_)";
    say "body $_";
}
```

Ansa imprimit:

```
-- first
body 1
-- next (was 1)
body 2
-- next (was 2)
body 3
-- next (was 3)
-- last
```

Idem est ac cum aliis phaseribus. `FIRST`, `NEXT` et `LAST` ubicumque in ansa scribere potes. Quisque suo tempore currit.

{% include nav.html %}
