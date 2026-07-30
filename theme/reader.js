// reader.js — the whole client for duo.raku.online.
//
// Every course page ships with its eleven translations already inlined, so
// switching languages is a re-render and never a fetch. What is fetched, and
// only when it is wanted, is the contents tree, the per-language title list,
// and the word index.

(function () {
'use strict';

var D = window.DUO || { langs: [] };
var K = window.DUO_KEYS || {};
var html = document.documentElement;
var PAGEKIND = document.body.getAttribute('data-page');
var PAGE = (function () {
  var el = document.getElementById('page-data');
  try { return JSON.parse(el.textContent); } catch (e) { return {}; }
})();

// --------------------------------------------------------------- storage

function raw(k, d) { try { var v = localStorage.getItem(k); return v === null ? d : v; } catch (e) { return d; } }
function rawSet(k, v) { try { localStorage.setItem(k, v); } catch (e) {} }
function js(k, d) { try { var v = localStorage.getItem(k); return v === null ? d : JSON.parse(v); } catch (e) { return d; } }
function jsSet(k, v) { try { localStorage.setItem(k, JSON.stringify(v)); } catch (e) {} }

var S = {
  base:   html.getAttribute('data-base'),
  target: html.getAttribute('data-target'),
  mode:   html.getAttribute('data-mode'),
  code:   html.getAttribute('data-code')
};

function lang(id) {
  for (var i = 0; i < D.langs.length; i++) if (D.langs[i].id === id) return D.langs[i];
  return { id: id, name: id, en: id, speech: id };
}

// --------------------------------------------------------------- helpers

function el(tag, cls, text) {
  var n = document.createElement(tag);
  if (cls) n.className = cls;
  if (text != null) n.textContent = text;
  return n;
}

// Titles arrive as HTML, because a course page can be called `while` or
// *Emphasis*. The generator produced that markup; nothing here is user input.
function elh(tag, cls, markup) {
  var n = document.createElement(tag);
  if (cls) n.className = cls;
  n.innerHTML = markup == null ? '' : markup;
  return n;
}

function textOf(markup) {
  var d = document.createElement('div');
  d.innerHTML = markup == null ? '' : markup;
  return d.textContent;
}

function toast(msg) {
  var box = document.getElementById('toasts');
  if (!box) return;
  var t = el('div', 'toast', msg);
  box.appendChild(t);
  setTimeout(function () { t.remove(); }, 2200);
}

function esc(s) {
  return String(s).replace(/[&<>"]/g, function (c) {
    return { '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;' }[c];
  });
}

var cache = {};
function getJSON(url) {
  if (!cache[url]) {
    cache[url] = fetch(url).then(function (r) {
      if (!r.ok) throw new Error(url + ': ' + r.status);
      return r.json();
    }).catch(function (e) { delete cache[url]; throw e; });
  }
  return cache[url];
}

function titles(id) { return getJSON('/data/titles/' + id + '.json'); }
function tree() { return getJSON('/data/tree.json'); }

// The word index is sharded by first letter; anything that is not a plain
// ASCII letter lives in a file named after its code point.
function shardOf(word) {
  var c = word.charAt(0);
  return /[a-z0-9]/.test(c) ? c : 'u' + c.codePointAt(0);
}
function lexEntry(id, word) {
  return getJSON('/data/lex/' + id + '/' + shardOf(word) + '.json')
    .then(function (m) { return m[word] || null; })
    .catch(function () { return null; });
}

var WORD_RE = /[\p{L}\p{M}][\p{L}\p{M}'’\-]*/gu;
function tokenize(s) { return (s.toLowerCase().match(WORD_RE) || []); }

// --------------------------------------------------------------- the pair

function paintPair(node, big) {
  if (!node) return;
  node.innerHTML = '';
  var missing = PAGEKIND === 'reader' ? PAGE.L : null;

  function select(which) {
    var sel = el('select', which === 'target' ? 'is-target' : '');
    sel.setAttribute('aria-label', which === 'target' ? 'Language you are learning' : 'Language you know');
    D.langs.forEach(function (l) {
      // The compact bar shows the endonym only; the home page has room to say
      // which language that is in English.
      var label = big && l.name !== l.en ? l.name + ' · ' + l.en : l.name;
      var o = el('option', '', label);
      o.value = l.id;
      if (missing && !missing[l.id]) o.textContent += ' — not on this page';
      if (S[which] === l.id) o.selected = true;
      sel.appendChild(o);
    });
    sel.addEventListener('change', function () {
      var other = which === 'target' ? 'base' : 'target';
      if (sel.value === S[other]) S[other] = S[which];      // never the same twice
      S[which] = sel.value;
      applyPair();
    });
    return sel;
  }

  var swap = el('button', 'swap', '⇄');
  swap.title = 'Swap the two languages (w)';
  swap.addEventListener('click', swapPair);

  node.appendChild(select('base'));
  node.appendChild(swap);
  node.appendChild(select('target'));
  if (big) node.classList.add('pair-big');
}

function swapPair() {
  var b = S.base; S.base = S.target; S.target = b;
  applyPair();
}

function applyPair() {
  rawSet(K.base, S.base);
  rawSet(K.target, S.target);
  html.setAttribute('data-base', S.base);
  html.setAttribute('data-target', S.target);
  paintPair(document.getElementById('pair'), PAGEKIND !== 'reader');
  if (PAGEKIND === 'reader') { render(); paintChrome(); }
  if (PAGEKIND === 'home') paintHomeToc();
  if (PAGEKIND === 'words') paintWords();
}

// -------------------------------------------------------------- the theme

(function themeButton() {
  var btn = document.getElementById('theme-btn');
  if (!btn) return;
  var order = ['system', 'light', 'dark'];
  var icon = { system: '◑', light: '☀', dark: '☾' };
  function paint() {
    var t = html.getAttribute('data-theme');
    btn.textContent = icon[t] || icon.system;
    btn.title = 'Theme: ' + t;
  }
  btn.addEventListener('click', function () {
    var t = html.getAttribute('data-theme');
    var next = order[(order.indexOf(t) + 1) % order.length];
    html.setAttribute('data-theme', next);
    html.setAttribute('data-theme-active',
      next === 'dark' || (next === 'system' && matchMedia('(prefers-color-scheme: dark)').matches) ? 'dark' : 'light');
    rawSet(K.theme, next);
    paint();
  });
  paint();
})();

// ---------------------------------------------------------------- reading

var READ_KEY = 'duo.read';
var LAST_KEY = 'duo.last';
var WORDS_KEY = 'duo.words';
var KNOWN_KEY = 'duo.known';

function readPages() { return js(READ_KEY, {}); }
function markRead(url) {
  var r = readPages();
  if (!r[url]) { r[url] = Date.now(); jsSet(READ_KEY, r); }
}

function savedWords() { return js(WORDS_KEY, []); }
function saveWords(list) { jsSet(WORDS_KEY, list); }
function wordKey(lg, w) { return lg + ':' + w; }
function findSaved(lg, w) {
  var list = savedWords(), k = wordKey(lg, w);
  for (var i = 0; i < list.length; i++) if (wordKey(list[i].lg, list[i].w) === k) return i;
  return -1;
}

// ------------------------------------------------------------------- TTS

var voices = [];
function loadVoices() { voices = window.speechSynthesis ? speechSynthesis.getVoices() : []; }
if (window.speechSynthesis) {
  loadVoices();
  speechSynthesis.addEventListener('voiceschanged', loadVoices);
}

function voiceFor(id) {
  var tag = lang(id).speech, two = tag.slice(0, 2).toLowerCase();
  var exact = null, loose = null;
  for (var i = 0; i < voices.length; i++) {
    var v = voices[i], vl = (v.lang || '').replace('_', '-').toLowerCase();
    if (vl === tag.toLowerCase()) { exact = v; break; }
    if (!loose && vl.slice(0, 2) === two) loose = v;
  }
  return exact || loose;
}

function speak(text, id, onend) {
  if (!window.speechSynthesis) { toast('This browser has no speech synthesis'); return false; }
  var u = new SpeechSynthesisUtterance(text);
  var v = voiceFor(id);
  if (v) u.voice = v;
  u.lang = lang(id).speech;
  u.rate = Number(raw('duo.rate', '0.95'));
  if (onend) { u.onend = onend; u.onerror = onend; }
  speechSynthesis.speak(u);
  if (!v) toast('No ' + lang(id).en + ' voice installed — using the default');
  return true;
}

function stopSpeaking() {
  if (window.speechSynthesis) speechSynthesis.cancel();
  reading = null;
  var b = document.getElementById('speak-btn');
  if (b) { b.textContent = '▶'; b.classList.remove('is-on'); }
  var hit = document.querySelector('.sg.spoken');
  if (hit) hit.classList.remove('spoken');
}

// ============================================================== THE READER

var reader = document.getElementById('reader');
var reading = null;

function blocksOf(id) { return (PAGE.L && PAGE.L[id]) ? PAGE.L[id].b : null; }
function titleOf(id) { return (PAGE.L && PAGE.L[id]) ? PAGE.L[id].t : ''; }

// Plain text of one block's segments, built from the HTML the generator
// already produced rather than shipping the same words twice.
var segCache = {};
function segments(id, bi) {
  var key = id + '/' + bi;
  if (segCache[key]) return segCache[key];
  var b = blocksOf(id);
  if (!b || !b[bi]) return (segCache[key] = []);
  var d = el('div');
  d.innerHTML = b[bi][2];
  var out = [];
  d.querySelectorAll('.sg').forEach(function (s) { out.push(s.textContent); });
  if (!out.length) out.push(d.textContent);
  return (segCache[key] = out);
}

function render() {
  if (!reader) return;
  segCache = {};
  reader.innerHTML = '';

  var bt = blocksOf(S.target), bb = blocksOf(S.base);

  var head = el('div', 'page-head');
  var kicker = el('span', 'kicker', (PAGE.k || 'page') + ' · ' +
    lang(S.base).name + ' ↔ ' + lang(S.target).name);
  var h1 = el('h1');
  h1.appendChild(elh('span', 'h-base', titleOf(S.base) || titleOf('en')));
  if (bt) {
    h1.appendChild(el('span', 'h-sep', '·'));
    h1.appendChild(elh('span', 'h-target', titleOf(S.target)));
  }
  head.appendChild(kicker);
  head.appendChild(h1);

  // This is a reading surface, not a replacement: the quizzes are interactive
  // and the exercises are checkable on the course itself.
  var srcs = el('div', 'srcs');
  srcs.appendChild(el('span', '', 'On course.raku.org: '));
  [S.base, S.target].forEach(function (id, i) {
    if (i) srcs.appendChild(el('span', 'sep', ' · '));
    var l = lang(id);
    var a = el('a', '', l.name);
    a.href = D.courseBase + '/' + (l.dir ? l.dir + '/' : '') + (PAGE.u ? PAGE.u + '/' : '');
    a.target = '_blank';
    a.rel = 'noopener';
    if (!blocksOf(id)) { a.removeAttribute('href'); a.className = 'off'; }
    srcs.appendChild(a);
  });
  head.appendChild(srcs);
  reader.appendChild(head);

  if (!bt) {
    var warn = el('div', 'page-head');
    warn.appendChild(el('p', 'lede',
      'This page has not been translated into ' + lang(S.target).en +
      '. Pick another language, or read on in ' + lang(S.base).en + '.'));
    reader.appendChild(warn);
  }

  var n = Math.max(bb ? bb.length : 0, bt ? bt.length : 0);
  for (var i = 0; i < n; i++) {
    var pr = el('div', 'pr');
    pr.dataset.b = i;

    var base = bb && bb[i], targ = bt && bt[i];
    if (targ && base && targ[1] !== base[1]) pr.classList.add('no-sync');
    if ((!targ || targ[0] === 'code') && (!base || base[0] === 'code')) pr.classList.add('only-code');

    // Most examples are the same program in both languages — only the string
    // literals get translated. When they are identical there is nothing to
    // compare, so the block runs the full width instead of being printed twice.
    if (targ && base && targ[0] === 'code' && base[0] === 'code' && targ[2] === base[2]) {
      pr.classList.add('same-code');
    }

    pr.appendChild(cell('base', base, i));
    pr.appendChild(cell('target', targ, i));
    reader.appendChild(pr);
  }

  paintPager();
  rememberPlace();
}

function cell(which, block, i) {
  var c = el('div', 'cell cell-' + which);
  c.dataset.b = i;
  c.dataset.pane = which;
  c.lang = lang(which === 'base' ? S.base : S.target).speech;
  if (block) {
    c.innerHTML = block[2];
    if (which === 'target' && block[1] > 0 && block[0] !== 'code') {
      var tools = el('div', 'blk-tools');
      var say = el('button', '', '🔊');
      say.title = 'Read this aloud';
      say.addEventListener('click', function (e) {
        e.stopPropagation();
        stopSpeaking();
        speak(segments(S.target, i).join(' '), S.target);
      });
      tools.appendChild(say);
      c.appendChild(tools);
    }
  }
  else c.classList.add('is-empty');
  return c;
}

// Hovering a sentence lights up the same sentence in the other language. When
// the two disagree about how many sentences they have, the whole paragraph
// lights up instead — a wrong pairing is worse than a coarse one.
function wire(node) {
  node.addEventListener('mouseover', function (e) {
    var sg = e.target.closest ? e.target.closest('.sg') : null;
    if (!sg || !node.contains(sg)) return;
    highlight(sg);
  });
  node.addEventListener('mouseleave', function () { highlight(null); });
}

function highlight(sg) {
  node_clear();
  if (!sg) return;
  var pr = sg.closest('.pr');
  if (!pr) return;
  if (pr.classList.contains('no-sync')) { pr.classList.add('hi'); return; }
  var i = sg.dataset.s;
  pr.querySelectorAll('.sg[data-s="' + i + '"]').forEach(function (s) { s.classList.add('hi'); });
}

function node_clear() {
  document.querySelectorAll('.sg.hi').forEach(function (s) { s.classList.remove('hi'); });
  document.querySelectorAll('.pr.hi').forEach(function (p) { p.classList.remove('hi'); });
}

if (reader) wire(reader);

// A click on the hidden half of a pair reveals it, in the practice modes.
if (reader) reader.addEventListener('click', function (e) {
  var cellEl = e.target.closest('.cell');
  if (!cellEl) return;
  var pr = cellEl.closest('.pr');
  var mode = html.getAttribute('data-mode');
  var hiddenPane = mode === 'target' ? 'base' : mode === 'base' ? 'target' : null;

  if (hiddenPane && cellEl.dataset.pane === hiddenPane && !pr.classList.contains('shown')) {
    pr.classList.add('shown');
    return;
  }
  if (e.target.closest('a, button, pre')) return;
  if (cellEl.dataset.pane !== 'target') return;

  var w = wordAt(e);
  if (w) openWord(w, Number(pr.dataset.b), e.target.closest('.sg'));
});

// The word under the pointer, found from the caret rather than by wrapping
// every word of the corpus in a span.
function wordAt(e) {
  var pos = null;
  if (document.caretPositionFromPoint) {
    var p = document.caretPositionFromPoint(e.clientX, e.clientY);
    if (p) pos = { node: p.offsetNode, offset: p.offset };
  } else if (document.caretRangeFromPoint) {
    var r = document.caretRangeFromPoint(e.clientX, e.clientY);
    if (r) pos = { node: r.startContainer, offset: r.startOffset };
  }
  if (!pos || !pos.node || pos.node.nodeType !== 3) return null;

  var text = pos.node.textContent, i = pos.offset;
  var isWord = function (c) { return c && /[\p{L}\p{M}'’\-]/u.test(c); };
  if (!isWord(text.charAt(i)) && !isWord(text.charAt(i - 1))) return null;
  var a = i, b = i;
  while (a > 0 && isWord(text.charAt(a - 1))) a--;
  while (b < text.length && isWord(text.charAt(b))) b++;
  var w = text.slice(a, b).replace(/^[-'’]+|[-'’]+$/g, '');
  return w.length > 1 ? w : null;
}

// ------------------------------------------------------------ chrome bits

function paintChrome() {
  Promise.all([titles(S.base), titles(S.target).catch(function () { return {}; })])
    .then(function (t) { paintCrumbs(t[0], t[1]); paintPager(t[0], t[1]); })
    .catch(function () {});
}

function paintCrumbs(tb, tt) {
  var box = document.getElementById('crumbs');
  if (!box) return;
  box.innerHTML = '';
  (PAGE.tr || []).forEach(function (u) {
    var a = elh('a', '', tb[u] || u);
    a.href = '/' + u + '/';
    box.appendChild(a);
    box.appendChild(el('span', 'sep', '›'));
  });
  box.appendChild(elh('span', '', (tb[PAGE.u] || titleOf(S.base))));
}

function paintPager(tb, tt) {
  var box = document.getElementById('pager');
  if (!box) return;
  box.innerHTML = '';
  function side(url, dir, cls) {
    if (!url) { box.appendChild(el('span', '')); return; }
    var a = el('a', cls);
    a.href = '/' + url + '/';
    a.appendChild(el('span', 'dir', dir));
    a.appendChild(elh('span', 't-base', (tb && tb[url]) || '…'));
    if (tt && tt[url]) a.appendChild(elh('span', 't-target', tt[url]));
    a.addEventListener('click', function () { markRead(PAGE.u); });
    box.appendChild(a);
  }
  side(PAGE.pv, '← previous', 'to-prev');
  side(PAGE.nx, 'next →', 'to-next');
}

function rememberPlace() {
  jsSet(LAST_KEY, { u: PAGE.u, t: textOf(titleOf(S.base)), at: Date.now() });
}

// Reaching the end of a page is what counts as having read it.
if (reader && 'IntersectionObserver' in window) {
  var pagerEl = document.getElementById('pager');
  if (pagerEl) {
    new IntersectionObserver(function (es) {
      es.forEach(function (x) { if (x.isIntersecting) markRead(PAGE.u); });
    }, { threshold: 0.6 }).observe(pagerEl);
  }
}

// --------------------------------------------------------- the word panel

var panel = document.getElementById('panel');

function closePanel() { if (panel) { panel.hidden = true; panel.innerHTML = ''; } }

function panelFrame(title) {
  panel.hidden = false;
  panel.innerHTML = '';
  var x = el('button', 'close', '✕');
  x.addEventListener('click', closePanel);
  panel.appendChild(x);
  return panel;
}

function markWord(text, word) {
  var out = document.createDocumentFragment();
  var re = new RegExp('(^|[^\\p{L}\\p{M}])(' + word.replace(/[.*+?^${}()|[\]\\]/g, '\\$&') + ')(?![\\p{L}\\p{M}])', 'giu');
  var last = 0, m;
  while ((m = re.exec(text)) !== null) {
    out.appendChild(document.createTextNode(text.slice(last, m.index) + m[1]));
    var mk = el('mark', '', m[2]);
    out.appendChild(mk);
    last = m.index + m[0].length;
    if (re.lastIndex === m.index) re.lastIndex++;
  }
  out.appendChild(document.createTextNode(text.slice(last)));
  return out;
}

function openWord(word, blockIdx, sgNode) {
  if (!panel) return;
  var w = word.toLowerCase();
  var box = panelFrame();

  var head = el('div', 'wp-head');
  head.appendChild(el('span', 'wp-word', word));
  var meta = el('span', 'wp-meta', 'looking it up…');
  head.appendChild(meta);
  box.appendChild(head);

  var acts = el('div', 'wp-acts');
  var saveBtn = el('button', 'btn', '');
  var speakBtn = el('button', 'btn', '🔊 Say it');
  var wikt = el('a', 'btn', 'Wiktionary ↗');
  wikt.href = 'https://' + (S.target === 'en' ? 'en' : S.target) + '.wiktionary.org/wiki/' + encodeURIComponent(word);
  wikt.target = '_blank';
  wikt.rel = 'noopener';
  speakBtn.addEventListener('click', function () { stopSpeaking(); speak(word, S.target); });
  acts.appendChild(saveBtn);
  acts.appendChild(speakBtn);
  acts.appendChild(wikt);
  box.appendChild(acts);

  // The sentence it was clicked in, and its twin.
  var here = null;
  if (sgNode && blockIdx != null) {
    var si = Number(sgNode.dataset.s);
    var t = segments(S.target, blockIdx)[si];
    var b = segments(S.base, blockIdx)[si];
    var pr = sgNode.closest('.pr');
    if (pr && pr.classList.contains('no-sync')) b = segments(S.base, blockIdx).join(' ');
    if (t) {
      here = { t: t, b: b || '', u: PAGE.u };
      var s = el('div', 'wp-sent');
      var tt = el('span', 't');
      tt.appendChild(markWord(t, w));
      s.appendChild(tt);
      if (b) s.appendChild(el('span', 'b', b));
      box.appendChild(s);
    }
  }

  function paintSave() {
    var at = findSaved(S.target, w);
    saveBtn.textContent = at >= 0 ? '★ Saved' : '☆ Save this word';
    saveBtn.classList.toggle('is-on', at >= 0);
  }
  saveBtn.addEventListener('click', function () {
    var list = savedWords(), at = findSaved(S.target, w);
    if (at >= 0) { list.splice(at, 1); saveWords(list); toast('Removed'); }
    else {
      list.push({
        w: w, shown: word, lg: S.target, bg: S.base,
        t: here ? here.t : '', b: here ? here.b : '',
        u: PAGE.u, added: Date.now(), box: 1, due: Date.now()
      });
      saveWords(list);
      toast('Saved to your words');
    }
    paintSave();
  });
  paintSave();

  var more = el('div', 'wp-more', 'Elsewhere in the course');
  var exBox = el('div');
  box.appendChild(more);
  box.appendChild(el('div', 'wp-meta', 'looking…')).id = 'wp-loading';
  box.appendChild(exBox);

  lexEntry(S.target, w).then(function (entry) {
    meta.textContent = entry
      ? entry[0] + (entry[0] === 1 ? ' time' : ' times') + ' in the course · rank ' + entry[1] +
        ' of ' + (lang(S.target).words || '')
      : 'not in the index (an inflected form, most likely)';
    if (entry) meta.textContent = entry[0] + (entry[0] === 1 ? ' time' : ' times') +
      ' in the course · #' + entry[1] + ' most common';
    return entry;
  }).then(function (entry) {
    var load = document.getElementById('wp-loading');
    if (!entry || !entry[2] || !entry[2].length) {
      if (load) load.textContent = 'No other examples in the course.';
      return;
    }
    return concordance(w, entry[2]).then(function (rows) {
      if (load) load.remove();
      if (!rows.length) { more.after(el('div', 'wp-meta', 'No other examples found.')); return; }
      rows.forEach(function (r) {
        var d = el('div', 'wp-ex');
        var t = el('span', 't');
        t.appendChild(markWord(r.t, w));
        d.appendChild(t);
        if (r.b) d.appendChild(el('span', 'b', r.b));
        var src = elh('a', 'src', r.title || esc(r.u));
        src.href = '/' + r.u + '/';
        d.appendChild(src);
        exBox.appendChild(d);
      });
    });
  }).catch(function () {
    var load = document.getElementById('wp-loading');
    if (load) load.textContent = 'Could not reach the word index.';
  });
}

// Pull the sentences a word appears in out of other pages. The pages carry
// every language, so the base-language twin comes back with them.
function concordance(word, pageIdxs) {
  return tree().then(function (t) {
    var urls = pageIdxs.map(function (i) { return t.seq[i]; })
                       .filter(function (u) { return u && u !== PAGE.u; })
                       .slice(0, 4);
    return Promise.all(urls.map(fetchPage)).then(function (docs) {
      var rows = [];
      docs.forEach(function (doc, k) {
        if (!doc || !doc.L || !doc.L[S.target]) return;
        var hit = findSentence(doc, word);
        if (hit) { hit.u = urls[k]; hit.title = doc.L[S.base] ? doc.L[S.base].t : ''; rows.push(hit); }
      });
      return rows;
    });
  });
}

function fetchPage(url) {
  if (cache['page:' + url]) return cache['page:' + url];
  var p = fetch('/' + url + '/').then(function (r) { return r.text(); }).then(function (h) {
    var m = h.match(/id="page-data">([\s\S]*?)<\/script>/);
    return m ? JSON.parse(m[1]) : null;
  }).catch(function () { return null; });
  cache['page:' + url] = p;
  return p;
}

function findSentence(doc, word) {
  var tb = doc.L[S.target].b, bb = doc.L[S.base] ? doc.L[S.base].b : null;
  var re = new RegExp('(^|[^\\p{L}\\p{M}])' + word.replace(/[.*+?^${}()|[\]\\]/g, '\\$&') + '(?![\\p{L}\\p{M}])', 'iu');
  for (var i = 0; i < tb.length; i++) {
    if (tb[i][0] === 'code') continue;
    var segs = htmlSegs(tb[i][2]);
    for (var j = 0; j < segs.length; j++) {
      if (!re.test(segs[j])) continue;
      var b = '';
      if (bb && bb[i] && bb[i][1] === tb[i][1]) b = htmlSegs(bb[i][2])[j] || '';
      else if (bb && bb[i]) b = htmlSegs(bb[i][2]).join(' ');
      return { t: segs[j], b: b };
    }
  }
  return null;
}

function htmlSegs(h) {
  var d = el('div');
  d.innerHTML = h;
  var out = [];
  d.querySelectorAll('.sg').forEach(function (s) { out.push(s.textContent); });
  return out.length ? out : [d.textContent];
}

// --------------------------------------------- words worth noticing here

function noticeWords() {
  if (!panel) return;
  var bt = blocksOf(S.target);
  if (!bt) { toast('This page is not in ' + lang(S.target).en); return; }

  var box = panelFrame();
  box.appendChild(el('h2', '', 'Words to notice on this page'));
  box.appendChild(el('div', 'wp-meta',
    'The rarest words here, commonest first among the rare. Click one to look it up.'));
  var list = el('div');
  box.appendChild(list);

  getJSON('/data/freq/' + S.target + '.json').then(function (freq) {
    var seen = {}, out = [];
    var known = js(KNOWN_KEY, {});
    for (var i = 0; i < bt.length; i++) {
      if (bt[i][0] === 'code') continue;
      htmlSegs(bt[i][2]).forEach(function (s) {
        tokenize(s).forEach(function (w) {
          if (seen[w] || w.length < 3) return;
          seen[w] = true;
          if (known[wordKey(S.target, w)]) return;
          if (findSaved(S.target, w) >= 0) return;
          var rank = freq[w] || 99999;
          if (rank <= 400) return;                 // the language's common core
          out.push({ w: w, rank: rank });
        });
      });
    }
    out.sort(function (a, b) { return a.rank - b.rank; });
    if (!out.length) { list.appendChild(el('div', 'wp-meta', 'Nothing unusual here.')); return; }
    out.slice(0, 40).forEach(function (o) {
      var row = el('div', 'wp-ex');
      var a = el('a', '', o.w);
      a.href = '#';
      a.addEventListener('click', function (e) { e.preventDefault(); openWord(o.w, null, null); });
      row.appendChild(a);
      row.appendChild(el('span', 'wp-meta', o.rank >= 99999 ? '  · rare' : '  · #' + o.rank));
      list.appendChild(row);
    });
  }).catch(function () { list.textContent = 'Could not load the word list.'; });
}

// ------------------------------------------------------------ the drawer

var drawer = document.getElementById('drawer');

function toggleDrawer() {
  if (!drawer) return;
  if (!drawer.hidden) { drawer.hidden = true; return; }
  drawer.hidden = false;
  if (drawer.dataset.for === S.base + '/' + S.target) return;
  drawer.dataset.for = S.base + '/' + S.target;
  drawer.innerHTML = '';
  var x = el('button', 'close', '✕');
  x.addEventListener('click', function () { drawer.hidden = true; });
  drawer.appendChild(x);
  drawer.appendChild(el('h2', '', 'Contents'));
  var host = el('div');
  drawer.appendChild(host);
  buildToc(host, true);
}

function buildToc(host, showSecond) {
  Promise.all([tree(), titles(S.base), titles(S.target).catch(function () { return {}; })])
    .then(function (r) {
      var t = r[0], tb = r[1], tt = r[2], read = readPages();
      host.innerHTML = '';
      t.tree.forEach(function (part) {
        var sec = el('div', 'toc-part');
        var a = elh('a', '', tb[part.u] || part.u);
        a.href = '/' + part.u + '/';
        sec.appendChild(a);
        (part.c || []).forEach(function (group) {
          if (group.g) sec.appendChild(el('div', 'toc-group', group.g));
          var ul = el('ul', 'toc-list');
          (group.c || []).forEach(function (node) { tocNode(ul, node, 1, tb, tt, read, showSecond); });
          sec.appendChild(ul);
        });
        host.appendChild(sec);
      });
      var here = host.querySelector('.is-here');
      if (here) here.scrollIntoView({ block: 'center' });
    })
    .catch(function () { host.textContent = 'Could not load the contents.'; });
}

function tocNode(ul, node, depth, tb, tt, read, showSecond) {
  var li = el('li');
  var a = el('a', depth > 1 ? 't' + depth : '');
  a.href = '/' + node.u + '/';
  a.appendChild(elh('span', '', tb[node.u] || node.u));
  if (showSecond && tt[node.u] && tt[node.u] !== tb[node.u]) {
    a.appendChild(el('span', 'lang2', ' · ' + tt[node.u]));
  }
  if (node.u === PAGE.u) a.classList.add('is-here');
  if (read[node.u]) a.classList.add('is-read');
  li.appendChild(a);
  ul.appendChild(li);
  (node.c || []).forEach(function (k) { tocNode(ul, k, depth + 1, tb, tt, read, showSecond); });
}

// ------------------------------------------------------------- the modes

var MODES = ['parallel', 'target', 'base'];
var MODE_LABEL = {
  parallel: 'Both languages',
  target:   'Target first — click a strip to reveal the translation',
  base:     'Your language first — translate, then click to check'
};
var MODE_ICON = { parallel: '◐', target: '◑', base: '◓' };

function setMode(m) {
  S.mode = m;
  html.setAttribute('data-mode', m);
  rawSet(K.mode, m);
  var btn = document.getElementById('mode-btn');
  if (btn) { btn.textContent = MODE_ICON[m]; btn.title = MODE_LABEL[m]; }
  document.querySelectorAll('.pr.shown').forEach(function (p) { p.classList.remove('shown'); });
  toast(MODE_LABEL[m]);
}

(function modeButton() {
  var btn = document.getElementById('mode-btn');
  if (!btn) return;
  btn.textContent = MODE_ICON[S.mode] || '◐';
  btn.title = MODE_LABEL[S.mode] || '';
  btn.addEventListener('click', function () {
    setMode(MODES[(MODES.indexOf(html.getAttribute('data-mode')) + 1) % MODES.length]);
  });
})();

// ------------------------------------------------- reading the page aloud

function readAloud() {
  if (reading) { stopSpeaking(); return; }
  var bt = blocksOf(S.target);
  if (!bt) { toast('This page is not in ' + lang(S.target).en); return; }

  var queue = [];
  for (var i = 0; i < bt.length; i++) {
    if (bt[i][0] === 'code' || bt[i][1] === 0) continue;
    for (var j = 0; j < bt[i][1]; j++) queue.push({ b: i, s: j });
  }
  if (!queue.length) { toast('Nothing to read here'); return; }

  var btn = document.getElementById('speak-btn');
  if (btn) { btn.textContent = '■'; btn.classList.add('is-on'); }
  reading = { queue: queue, at: 0 };

  (function step() {
    if (!reading || reading.at >= reading.queue.length) { stopSpeaking(); return; }
    var cur = reading.queue[reading.at++];
    var sel = '.cell-target[data-b="' + cur.b + '"] .sg[data-s="' + cur.s + '"]';
    var node = document.querySelector(sel);
    document.querySelectorAll('.sg.spoken').forEach(function (s) { s.classList.remove('spoken'); });
    if (node) {
      node.classList.add('spoken');
      node.scrollIntoView({ block: 'center', behavior: 'smooth' });
    }
    var text = segments(S.target, cur.b)[cur.s];
    if (!text) { step(); return; }
    speak(text, S.target, step);
  })();
}

// ---------------------------------------------------------- the shortcuts

var HELP = [
  ['←  →', 'Previous / next page'],
  ['j  k', 'Next / previous paragraph'],
  ['m', 'Cycle the reading mode'],
  ['w', 'Swap the two languages'],
  ['r', 'Reveal every hidden paragraph'],
  ['s', 'Read the page aloud (or stop)'],
  ['n', 'Words to notice on this page'],
  ['c', 'Contents'],
  ['v', 'Your saved words'],
  ['/', 'Hide or show the code blocks'],
  ['Esc', 'Close whatever is open'],
  ['?', 'This list']
];

function showHelp() {
  var old = document.getElementById('help');
  if (old) { old.hidden = !old.hidden; return; }
  var wrap = el('div', 'help');
  wrap.id = 'help';
  var box = el('div', 'help-box');
  box.appendChild(el('h2', '', 'Keyboard'));
  var dl = el('dl');
  HELP.forEach(function (r) {
    var dt = el('dt');
    r[0].split('  ').forEach(function (k, i) {
      if (i) dt.appendChild(document.createTextNode(' '));
      dt.appendChild(el('kbd', '', k));
    });
    dl.appendChild(dt);
    dl.appendChild(el('dd', '', r[1]));
  });
  box.appendChild(dl);
  wrap.appendChild(box);
  wrap.addEventListener('click', function () { wrap.hidden = true; });
  document.body.appendChild(wrap);
}

function scrollBlocks(dir) {
  var rows = Array.prototype.slice.call(document.querySelectorAll('.pr'));
  if (!rows.length) return;
  var y = window.scrollY + 90;
  var idx = 0;
  for (var i = 0; i < rows.length; i++) {
    if (rows[i].getBoundingClientRect().top + window.scrollY <= y + 4) idx = i;
  }
  idx = Math.min(rows.length - 1, Math.max(0, idx + dir));
  var top = rows[idx].getBoundingClientRect().top + window.scrollY - 80;
  window.scrollTo({ top: top, behavior: 'smooth' });
  if (S.mode !== 'parallel') rows[idx].classList.add('shown');
}

document.addEventListener('keydown', function (e) {
  if (e.metaKey || e.ctrlKey || e.altKey) return;
  var t = e.target;
  if (t && (t.tagName === 'INPUT' || t.tagName === 'TEXTAREA' || t.tagName === 'SELECT' || t.isContentEditable)) return;

  switch (e.key) {
    case 'Escape':
      closePanel();
      if (drawer) drawer.hidden = true;
      var h = document.getElementById('help'); if (h) h.hidden = true;
      stopSpeaking();
      break;
    case 'ArrowLeft':  if (PAGE.pv) { markRead(PAGE.u); location.href = '/' + PAGE.pv + '/'; } break;
    case 'ArrowRight': if (PAGE.nx) { markRead(PAGE.u); location.href = '/' + PAGE.nx + '/'; } break;
    case 'j': scrollBlocks(1); break;
    case 'k': scrollBlocks(-1); break;
    case 'm': setMode(MODES[(MODES.indexOf(html.getAttribute('data-mode')) + 1) % MODES.length]); break;
    case 'w': swapPair(); break;
    case 'r': document.querySelectorAll('.pr').forEach(function (p) { p.classList.add('shown'); }); break;
    case 's': readAloud(); break;
    case 'n': noticeWords(); break;
    case 'c': toggleDrawer(); break;
    case 'v': location.href = '/words/'; break;
    case '/':
      e.preventDefault();
      S.code = html.getAttribute('data-code') === 'hide' ? 'show' : 'hide';
      html.setAttribute('data-code', S.code);
      rawSet(K.code, S.code);
      toast(S.code === 'hide' ? 'Code hidden' : 'Code shown');
      break;
    case '?': showHelp(); break;
  }
});

// ================================================================== PAGES

if (PAGEKIND === 'reader') {
  paintPair(document.getElementById('pair'), false);
  render();
  paintChrome();
  var sb = document.getElementById('speak-btn');
  if (sb) sb.addEventListener('click', readAloud);
  var tb = document.getElementById('toc-btn');
  if (tb) tb.addEventListener('click', toggleDrawer);
  var nb = document.getElementById('notes-btn');
  if (nb) nb.addEventListener('click', noticeWords);
  window.addEventListener('beforeunload', stopSpeaking);
}

// ------------------------------------------------------------------ home

function paintHomeToc() {
  var host = document.getElementById('home-toc');
  if (host) buildToc(host, false);
  var res = document.getElementById('resume');
  var last = js(LAST_KEY, null);
  if (res && last && last.u) {
    res.hidden = false;
    res.innerHTML = '';
    res.appendChild(document.createTextNode('Continue where you left off: '));
    var a = el('a', '', last.t || last.u);
    a.href = '/' + last.u + '/';
    res.appendChild(a);
    var n = Object.keys(readPages()).length;
    if (n) res.appendChild(el('span', 'wp-meta', '  ·  ' + n + ' of ' + D.pages + ' pages read'));
  }
}

if (PAGEKIND === 'home') {
  paintPair(document.getElementById('pair'), true);
  paintHomeToc();
  var how = document.getElementById('how');
  if (how) {
    [
      ['Two columns, one grid', 'Each paragraph sits opposite its translation. Hover a sentence and its twin lights up in the other language.'],
      ['Cover one side', 'Press <kbd>m</kbd> to read the language you are learning alone, then click the strip under a paragraph to check yourself.'],
      ['Click any word', 'You get its frequency in the course and every other sentence it appears in — with the translations beside them.'],
      ['Hear it', 'Press <kbd>s</kbd> and the page is read aloud in the language you are learning, sentence by sentence.'],
      ['Keep the words', 'Save what you want to remember, practise it as cloze cards, export it to Anki.'],
      ['It is still a Raku course', 'Every page links back to <a href="https://course.raku.org">course.raku.org</a>, quizzes, exercises and all.']
    ].forEach(function (c) {
      var d = el('div');
      d.appendChild(el('h3', '', c[0]));
      var p = el('p');
      p.innerHTML = c[1];
      d.appendChild(p);
      how.appendChild(d);
    });
  }
}

// ----------------------------------------------------------------- words

function paintWords() {
  var host = document.getElementById('word-list');
  if (!host) return;
  var list = savedWords();
  var count = document.getElementById('words-count');
  host.innerHTML = '';

  if (!list.length) {
    if (count) count.textContent = 'No saved words yet.';
    host.appendChild(el('div', 'wp-meta',
      'While reading, click a word in the language you are learning and press “Save this word”.'));
    return;
  }
  if (count) {
    var byLang = {};
    list.forEach(function (r) { byLang[r.lg] = (byLang[r.lg] || 0) + 1; });
    count.textContent = list.length + ' word' + (list.length === 1 ? '' : 's') + ' · ' +
      Object.keys(byLang).map(function (k) { return byLang[k] + ' ' + lang(k).en; }).join(', ');
  }

  list.slice().reverse().forEach(function (r) {
    var c = el('div', 'wcard');
    var top = el('div', 'top');
    top.appendChild(el('span', 'w', r.shown || r.w));
    top.appendChild(el('span', 'lg', lang(r.lg).en));
    top.appendChild(el('span', 'box', 'box ' + (r.box || 1)));
    var say = el('button', 'drop', '🔊');
    say.title = 'Say it';
    say.addEventListener('click', function () { stopSpeaking(); speak(r.w, r.lg); });
    var drop = el('button', 'drop', '✕');
    drop.title = 'Forget this word';
    drop.addEventListener('click', function () {
      var all = savedWords(), at = findSaved(r.lg, r.w);
      if (at >= 0) { all.splice(at, 1); saveWords(all); paintWords(); }
    });
    top.appendChild(say);
    top.appendChild(drop);
    c.appendChild(top);

    if (r.t) {
      var s = el('div', 's');
      var t = el('span', '');
      t.appendChild(markWord(r.t, r.w));
      s.appendChild(t);
      if (r.b) s.appendChild(el('span', 'b', r.b));
      c.appendChild(s);
    }
    if (r.u) {
      var a = el('a', 'src', 'where it came from ↗');
      a.href = '/' + r.u + '/';
      a.style.fontSize = '.74rem';
      c.appendChild(a);
    }
    host.appendChild(c);
  });
}

// A Leitner drill over the sentence the word was saved from: blank the word
// out, try to produce it, then grade yourself. Boxes widen the interval.
var DELAY = [0, 1, 2, 5, 10, 21];        // days per box

function startDrill() {
  var box = document.getElementById('drill');
  var listBox = document.getElementById('word-list');
  if (!box) return;
  var due = savedWords().filter(function (r) { return (r.due || 0) <= Date.now(); });
  var pool = due.length ? due : savedWords();
  if (!pool.length) { toast('Nothing to practise yet'); return; }

  box.hidden = false;
  listBox.hidden = true;
  var order = pool.slice().sort(function () { return Math.random() - 0.5; });
  var at = 0;

  function card() {
    box.innerHTML = '';
    if (at >= order.length) {
      box.appendChild(el('div', 'prompt', 'Done — ' + order.length + ' card' + (order.length === 1 ? '' : 's') + '.'));
      var back = el('button', 'btn', 'Back to the list');
      back.addEventListener('click', function () { box.hidden = true; listBox.hidden = false; paintWords(); });
      var acts0 = el('div', 'acts');
      acts0.appendChild(back);
      box.appendChild(acts0);
      return;
    }
    var r = order[at];
    box.appendChild(el('div', 'progress', (at + 1) + ' / ' + order.length + ' · ' + lang(r.lg).en));

    var prompt = el('div', 'prompt');
    if (r.t) {
      // Blank the word out of the sentence it was met in — recall in context
      // beats recall from a bare list.
      var re = new RegExp('(^|[^\\p{L}\\p{M}])' + r.w.replace(/[.*+?^${}()|[\]\\]/g, '\\$&') + '(?![\\p{L}\\p{M}])', 'giu');
      prompt.innerHTML = esc(r.t).replace(re, '$1<span class="gap"></span>');
    } else {
      prompt.textContent = '?';
    }
    box.appendChild(prompt);
    if (r.b) box.appendChild(el('div', 'hint', r.b));

    var acts = el('div', 'acts');
    var show = el('button', 'btn', 'Show the word');
    show.addEventListener('click', function () {
      box.querySelector('.acts').remove();
      box.appendChild(el('div', 'answer', r.shown || r.w));
      var say = el('button', 'btn', '🔊');
      var again = el('button', 'btn', 'Again');
      var good = el('button', 'btn is-on', 'Got it');
      say.addEventListener('click', function () { stopSpeaking(); speak(r.w, r.lg); });
      again.addEventListener('click', function () { grade(r, -1); });
      good.addEventListener('click', function () { grade(r, 1); });
      var a2 = el('div', 'acts');
      a2.appendChild(again);
      a2.appendChild(good);
      a2.appendChild(say);
      box.appendChild(a2);
      speak(r.w, r.lg);
    });
    var quit = el('button', 'btn btn-quiet', 'Stop');
    quit.addEventListener('click', function () { box.hidden = true; listBox.hidden = false; paintWords(); });
    acts.appendChild(show);
    acts.appendChild(quit);
    box.appendChild(acts);
  }

  function grade(r, dir) {
    var all = savedWords(), i = findSaved(r.lg, r.w);
    if (i >= 0) {
      var b = Math.min(DELAY.length - 1, Math.max(1, (all[i].box || 1) + dir));
      all[i].box = b;
      all[i].due = Date.now() + DELAY[b] * 86400000;
      saveWords(all);
    }
    at++;
    card();
  }

  card();
}

if (PAGEKIND === 'words') {
  paintPair(document.getElementById('pair'), false);
  paintWords();
  var db = document.getElementById('drill-btn');
  if (db) db.addEventListener('click', startDrill);
  var eb = document.getElementById('export-btn');
  if (eb) eb.addEventListener('click', function () {
    var list = savedWords();
    if (!list.length) { toast('Nothing to export'); return; }
    var rows = list.map(function (r) {
      return [r.shown || r.w, r.b || '', (r.t || '').replace(/\t/g, ' '), lang(r.lg).en].join('\t');
    });
    var blob = new Blob([rows.join('\n') + '\n'], { type: 'text/tab-separated-values' });
    var a = el('a');
    a.href = URL.createObjectURL(blob);
    a.download = 'duo-words.tsv';
    a.click();
    setTimeout(function () { URL.revokeObjectURL(a.href); }, 1000);
    toast('Exported ' + list.length + ' cards');
  });
  var cb = document.getElementById('clear-btn');
  if (cb) cb.addEventListener('click', function () {
    if (confirm('Forget every saved word? This cannot be undone.')) {
      saveWords([]);
      paintWords();
    }
  });
}

})();
