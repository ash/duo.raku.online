---
title: Exitum capere
translations_gpt:
---

{% include menu.html %}

Plerumque programma externum in screen imprimit. Sed fortasse exitum eius in programmate tuo legere vis. Tum `:out` adde cum programma incipis. Obiectum `Proc` accipis. Tractabulum `.out` habet. Ex hoc tractabulo exitum legere potes:

```raku
my $proc = run 'echo', 'hello', :out;
my $output = $proc.out.slurp(:close);
say $output.chomp; # hello
```

`:out` exitum vulgarem programmatis in `Proc` mittit. Exitus vulgaris est fluentum pro exitu ordinario programmatis. Tractabulum `.out` sicut tractabula archivorum ex sectione superiore operatur. `.slurp` totum textum ex eo simul legit. Adverbium `:close` compendium utile est. Post lectionem tractabulum pro te claudit. Antea hoc ipse per `.close` in tractabulo archivi fecisti. Itaque nihil apertum manet. Denique `.chomp` novam lineam in fine removet. `echo` hanc novam lineam addit.

Idem cum `shell` operatur. Hoc cum fistula utile est. In fistula unum imperatum exitum suum ad proximum mittit. Per `shell` effectum ultimum capere potes:

```raku
my $proc = shell 'echo hello | tr a-z A-Z', :out;
say $proc.out.slurp(:close).chomp; # HELLO
```

Etiam fluentum errorum capere potes. Hoc fluentum error vulgaris vocatur. Programma nuntios errorum suos illuc imprimit. Pro hoc fluento `:err` et tractabulum `.err` adhibe. Et `:out` et `:err` tradere potes. Tum duo fluenta separata manent. Quodque fluentum suum tractabulum habet. Itaque utrumque separatim legere potes:

```raku
my $proc = run 'sh', '-c', 'echo out-line; echo err-line >&2', :out, :err;

say 'stdout: ', $proc.out.slurp(:close).chomp; # stdout: out-line
say 'stderr: ', $proc.err.slurp(:close).chomp; # stderr: err-line
```

Hic imperatum interpretis duas lineas imprimit. Una linea ad exitum vulgarem it. Altera linea ad errorem vulgarem it. Pars `>&2` eam illuc mittit. Utrumque fluentum petivimus. Itaque `.out` et `.err` ea separatim tenent. Exitus ordinarius programmatis numquam se cum nuntiis errorum eius miscet.

Exitum capere valde utile est. Programma externum fit una pars programmatis tui. Id curris et effectum eius legis. Tum programma tuum pergit et haec data adhibet.

{% include nav.html %}
