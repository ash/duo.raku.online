// boot.js — runs before first paint, so nothing flashes in the wrong theme or
// the wrong language. Everything it touches is an attribute on <html>; the
// stylesheet keys off those, and reader.js reads them back instead of asking
// localStorage a second time.
(function () {
  var K = {
    theme:  'duo.theme',
    base:   'duo.base',
    target: 'duo.target',
    mode:   'duo.mode',
    code:   'duo.code'
  };

  function get(k, fallback) {
    try { return localStorage.getItem(k) || fallback; } catch (e) { return fallback; }
  }

  var D = window.DUO || {};
  var ids = (D.langs || []).map(function (l) { return l.id; });
  var pair = D.defaultPair || { base: 'en', target: 'de' };

  var theme  = get(K.theme, 'system');
  var base   = get(K.base, pair.base);
  var target = get(K.target, pair.target);
  var mode   = get(K.mode, 'parallel');
  var code   = get(K.code, 'show');

  // A language that vanished from site.raku must not leave the reader stuck on
  // a pane it can never fill.
  if (ids.length) {
    if (ids.indexOf(base) < 0)   base = pair.base;
    if (ids.indexOf(target) < 0) target = pair.target;
    if (base === target) target = ids.filter(function (i) { return i !== base; })[0] || target;
  }

  var mql = window.matchMedia('(prefers-color-scheme: dark)');
  function effective(t) {
    return (t === 'dark' || (t === 'system' && mql.matches)) ? 'dark' : 'light';
  }

  var el = document.documentElement;
  el.setAttribute('data-theme', theme);
  el.setAttribute('data-theme-active', effective(theme));
  el.setAttribute('data-base', base);
  el.setAttribute('data-target', target);
  el.setAttribute('data-mode', mode);
  el.setAttribute('data-code', code);

  mql.addEventListener('change', function () {
    if (el.getAttribute('data-theme') === 'system') {
      el.setAttribute('data-theme-active', effective('system'));
    }
  });

  window.DUO_KEYS = K;
})();
