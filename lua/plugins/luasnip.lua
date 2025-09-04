local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

vim.keymap.set({ "i", "s" }, "<A-l>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<A-h>", function()
  if ls.jumpable(-1) then
    ls.jump(-1)
  end
end, { silent = true })

ls.add_snippets("markdown", {
  s("$", {t('$'), i(1), t('$')}),
  s("$$", {t('$$'), i(1), t('$$')}),
  s("qed", {t('□')}),
  s("\\", {t('\\setminus')}),
  s("(", {
    t('\\left('), i(1), t('\\right)')
  }),
  s("[", {
    t('\\left['), i(1), t('\\right]'),
  }),
  s("{", {
    t('\\left\\{'), i(1), t('\\right\\}'),
  }),
  s("bar", {t('\\bar{'), i(1), t('}')}),
  s("dot", {t('\\dot{'), i(1), t('}')}),
  s("tilde", {t('\\widetilde{'), i(1), t('}')}),
  s("hat", {t('\\hat{'), i(1), t('}')}),
  s("par", {t('§')}),
  s("+-", {t('\\pm')}),
  s("-+", {t('\\mp')}),
  s("times", {t('\\times')}),
  s("*", {t('\\cdot')}),
  s("and", {t('\\wedge')}),
  s("or", {t('\\vee')}),
  s("==", {t('\\iff')}),
  s("=>", {t('\\implies')}),
  s(">=", {t('\\geq')}),
  s("<=", {t('\\leq')}),
  s("===", {t('\\equiv')}),
  s("~", {t('\\sim')}),
  s("~=", {t('\\approx')}),
  s("!=", {t('\\neq')}),
  s("in", {t('\\in')}),
  s("ni", {t('\\ni')}),
  s("!in", {t('\\notin')}),
  s("all", {t('\\forall')}),
  s("exist", {t('\\exists')}),
  s("nexist", {t('\\nexists')}),
  s("empty", {t('\\emptyset')}),
  s("nabla", {t('\\nabla')}),
  s("sqrt", {t('\\sqrt{'), i(1), t('}')}),
  s("nsqrt", {t('\\sqrt['), i(1), t(']{'),i(2), t('}')}),
  s("sin", {t('\\sin')}),
  s("cos", {t('\\cos')}),
  s("tan", {t('\\tan')}),
  s("cot", {t('\\cot')}),
  s("mathset", {
    t('\\mathbb{'), i(1), t('}')
  }),
  s("int", {
    t('\\int_{'), i(1), t('}^{'), i(2), t('} '), i(3), t(' \\, dx')
  }),
  s("dint", {
    t('\\iint_{'), i(1), t('} '), i(2), t(' \\, dx \\, dy')
  }),
  s("tint", {
    t('\\iiint_{'), i(1), t('} '), i(2), t(' \\, dx \\, dy \\, dx')
  }),
  s("lim", {
    t('\\lim_{'), i(1), t(' \\to '), i(2), t('} '), i(3),
  }),
  s("/", {
    t('\\frac{'), i(1), t('}{'), i(2), t('}'),
  }),
  s("der", {
    t('\\frac{d}{d'), i(1), t('} \\left( '), i(2), t(' \\right)')
  }),
  s("inf", {t('\\infty')}),
  s(";a", {t('\\alpha')}),
  s(";b", {t('\\beta')}),
  s(";g", {t('\\gamma')}),
  s(";G", {t('\\Gamma')}),
  s(";d", {t('\\delta')}),
  s(";D", {t('\\Delta')}),
  s(";e", {t('\\epsilon')}),
  s(";z", {t('\\zeta')}),
  s(";h", {t('\\eta')}),
  s(";q", {t('\\theta')}),
  s(";Q", {t('\\Theta')}),
  s(";i", {t('\\iota')}),
  s(";k", {t('\\kappa')}),
  s(";l", {t('\\lambda')}),
  s(";L", {t('\\Lambda')}),
  s(";m", {t('\\mu')}),
  s(";n", {t('\\nu')}),
  s(";x", {t('\\xi')}),
  s(";X", {t('\\Xi')}),
  s(";p", {t('\\pi')}),
  s(";P", {t('\\Pi')}),
  s(";r", {t('\\rho')}),
  s(";s", {t('\\sigma')}),
  s(";S", {t('\\Sigma')}),
  s(";t", {t('\\tau')}),
  s(";f", {t('\\phi')}),
  s(";F", {t('\\Phi')}),
  s(";c", {t('\\chi')}),
  s(";p", {t('\\psi')}),
  s(";P", {t('\\Psi')}),
  s(";o", {t('\\omega')}),
  s(";O", {t('\\Omega')}),
})
