---
title: Zachte mislukkingen
translations_gpt:
---

{% include menu.html %}

Een exceptie werpen met `die` stopt alles meteen. Soms is dat te streng. Misschien wil je dat een subroutine meldt dat ze geen resultaat kon geven. Maar de aanroeper moet beslissen of dat fataal is. Daarvoor heeft Raku _zachte mislukkingen_, die je maakt met `fail`.

Als een subroutine `fail` aanroept, werpt ze niet meteen een exceptie. In plaats daarvan geeft ze een bijzonder `Failure`-object terug aan de aanroeper. Een `Failure` is ongedefinieerd, dus kan de aanroeper er rustig op controleren:

```raku
sub divide($a, $b) {
    fail 'cannot divide by zero' if $b == 0;
    return $a / $b;
}

say divide(10, 2);         # 5
say divide(10, 0).defined; # False
```

De geslaagde aanroep geeft `5` terug. De mislukte aanroep geeft een `Failure` terug, en `defined` geeft daarvoor `False`. Dus kan de aanroeper het resultaat testen voordat hij het gebruikt.

Waarom heet een `Failure` _zacht_? Hij wordt maar in één geval een echte, geworpen exceptie. Dat gebeurt als je hem als waarde gebruikt zonder hem eerst te controleren. Zolang je hem afhandelt, bijvoorbeeld door `defined` te testen, blijft hij stil. Zo kan een subroutine een probleem melden zonder het hele programma te stoppen.

## Dit heb je eerder gezien

Zo'n uitgestelde mislukking komt niet alleen van `fail`. Eerder in dit deel kwam je hetzelfde idee al twee keer tegen.

Een **deling door nul** levert stilletjes een waarde op. Ze werpt pas als je die waarde echt gebruikt:

```raku
my $x = 1 / 0;   # no error yet
say $x;           # throws only here, when the value is used
```

Een **mislukkend extern programma** geeft een `Proc` terug. Die werpt alleen als je hem weggooit zonder hem af te handelen. Als je hem bewaart en bekijkt, blijft hij een stille waarde:

```raku
run 'sh', '-c', 'exit 1';   # the failing Proc is discarded, so this throws
```

In elk geval stopt een probleem het programma niet op het moment dat het gebeurt. In plaats daarvan wordt het een waarde die je kunt controleren. Het wordt pas een geworpen exceptie als je het ongecontroleerd gebruikt of negeert. Het onderwerp [Niet elke fout is onmiddellijk](/nl/oop/try/deferred-errors) zet deze twee voorbeelden naast elkaar.

{% include nav.html %}
