---
title: Uitvoer opvangen
translations_gpt:
---

{% include menu.html %}

Soms moet je programma lezen wat een extern programma afdrukt, in plaats van het te tonen. Geef daarvoor `:out` mee als je het programma start. De teruggegeven `Proc` heeft dan een handle `.out` waaruit je kunt lezen:

```raku
my $proc = run 'echo', 'hello', :out;
my $output = $proc.out.slurp(:close);
say $output.chomp; # hello
```

`:out` stuurt de standaarduitvoer van het programma naar de `Proc`. De handle `.out` werkt als de bestandshandles uit de vorige sectie. `.slurp` leest er alles in één keer uit. Het bijwoord `:close` is een handige afkorting: het sluit de handle voor je na het lezen. Dezelfde opruiming deed je zelf met `.close` op een bestandshandle. Zo blijft er niets open. Ten slotte haalt `.chomp` de newline weg die `echo` aan het eind toevoegt.

Hetzelfde werkt met `shell`. Dat is handig als je het resultaat van een pipeline wilt opvangen:

```raku
my $proc = shell 'echo hello | tr a-z A-Z', :out;
say $proc.out.slurp(:close).chomp; # HELLO
```

Je kunt ook de foutstroom opvangen, met `:err` en de bijbehorende handle `.err`. Als je zowel `:out` als `:err` meegeeft, blijven de twee stromen apart. Elke stroom heeft een eigen handle, dus je kunt ze los van elkaar lezen:

```raku
my $proc = run 'sh', '-c', 'echo out-line; echo err-line >&2', :out, :err;

say 'stdout: ', $proc.out.slurp(:close).chomp; # stdout: out-line
say 'stderr: ', $proc.err.slurp(:close).chomp; # stderr: err-line
```

Hier drukt het shellcommando één regel af naar de standaarduitvoer en één naar de standaardfout. Het stuk `>&2` leidt de tweede regel daarheen om. We vroegen om beide stromen, dus bevatten `.out` en `.err` ze apart. De gewone uitvoer van het programma raakt nooit vermengd met zijn foutmeldingen.

Door uitvoer op te vangen kun je een extern programma als bouwsteen gebruiken. Je draait het, leest zijn resultaat en gaat met die gegevens verder in je eigen programma.

{% include nav.html %}
