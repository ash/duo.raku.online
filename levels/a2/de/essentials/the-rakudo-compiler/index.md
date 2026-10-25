---
title: Der Rakudo-Compiler
translations_gpt:
---

{% include menu.html %}

**Rakudo** ist der wichtigste Compiler von Raku. Dieser Kurs verwendet ihn. Heute ist Rakudo der vollständigste Weg, Raku auszuführen. Er ist auch in der Praxis sehr gut getestet. Wenn Leute also „den Raku-Compiler“ sagen, meinen sie meistens Rakudo.

Rakudo selbst ist vor allem in Raku geschrieben. Eine kleinere Sprache hilft beim Bauen. Diese Sprache ist NQP, kurz für „Not Quite Perl“. Rakudo übersetzt Ihr Programm in Bytecode. Dann führt er den Bytecode auf einer virtuellen Maschine namens **MoarVM** aus. Wenn Sie Rakudo installieren, bekommen Sie MoarVM auch. Rakudo will die ganze Sprache unterstützen. Soll jeder Teil von Raku funktionieren? Dann ist Rakudo die sicherste Wahl.

Rakudo unterstützt Raku 6.d. Neue Versionen von Rakudo kommen oft heraus. So bekommen Sie Korrekturen und neue Funktionen schnell.

## Die virtuelle Maschine

Normalerweise läuft Rakudo auf MoarVM. MoarVM ist eine virtuelle Maschine, extra für Raku gemacht. Aber Rakudo kann auch mit anderen virtuellen Maschinen arbeiten. Sie können ihn auf ihnen aufbauen. Trotzdem ist MoarVM die Standardwahl. Sie hat gute Unterstützung. Dieser Kurs erwartet, dass Sie MoarVM benutzen. Das ist der wichtigste Unterschied zwischen Rakudo und [Raku++](/de/essentials/the-rakupp-compiler). Raku++ ist in C++ geschrieben. Es braucht keine eigene virtuelle Maschine.

## Quellcode und Links

Rakudo ist quelloffen. Jeder kann seine Entwicklung ansehen:

* [rakudo.org](https://rakudo.org)
* [Rakudo auf GitHub](https://github.com/rakudo/rakudo)
* [moarvm.org](https://moarvm.org)

{% include nav.html %}
