---
title: Uitvoer opvangen
translations_gpt:
---

{% include menu.html %}

Normaal drukt een extern programma af op het scherm. Maar misschien wil je de uitvoer in je programma lezen. Geef dan `:out` mee als je het programma start. Je krijgt een `Proc`-object terug. Het heeft een handle `.out`. Uit deze handle kun je de uitvoer lezen:

```raku
my $proc = run 'echo', 'hello', :out;
my $output = $proc.out.slurp(:close);
say $output.chomp; # hello
```

`:out` stuurt de standaarduitvoer van het programma naar de `Proc`. Standaarduitvoer is de stroom voor de gewone uitvoer van een programma. De handle `.out` werkt als de bestandshandles uit de vorige sectie. `.slurp` leest alle tekst er in één keer uit. Het bijwoord `:close` is een handige afkorting. Het sluit de handle voor je na het lezen. Eerder deed je dit zelf met `.close` op een bestandshandle. Zo blijft er niets open. Ten slotte haalt `.chomp` de newline aan het eind weg. `echo` voegt deze newline toe.

Hetzelfde werkt met `shell`. Dat is handig bij een pipeline. In een pipeline stuurt een commando zijn uitvoer naar het volgende. Met `shell` kun je het eindresultaat opvangen:

```raku
my $proc = shell 'echo hello | tr a-z A-Z', :out;
say $proc.out.slurp(:close).chomp; # HELLO
```

Je kunt ook de foutstroom opvangen. Deze stroom heet standaardfout. Een programma drukt daar zijn foutmeldingen af. Gebruik voor deze stroom `:err` en de handle `.err`. Je kunt `:out` en `:err` allebei meegeven. Dan blijven de twee stromen apart. Elke stroom heeft een eigen handle. Zo kun je ze elk apart lezen:

```raku
my $proc = run 'sh', '-c', 'echo out-line; echo err-line >&2', :out, :err;

say 'stdout: ', $proc.out.slurp(:close).chomp; # stdout: out-line
say 'stderr: ', $proc.err.slurp(:close).chomp; # stderr: err-line
```

Hier drukt het shellcommando twee regels af. Eén regel gaat naar de standaarduitvoer. De andere regel gaat naar de standaardfout. Het stuk `>&2` stuurt hem daarheen. We vroegen om beide stromen. Dus bevatten `.out` en `.err` ze apart. De gewone uitvoer van het programma mengt zich nooit met zijn foutmeldingen.

Uitvoer opvangen is heel nuttig. Een extern programma wordt een deel van je eigen programma. Je draait het en leest zijn resultaat. Daarna gaat je programma verder en gebruikt het deze gegevens.

{% include nav.html %}
