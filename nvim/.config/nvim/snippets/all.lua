return {
    s(
        { trig = "en", dscr = "any environment" },
        fmta([[
            \begin{<>}
                <>
            \end{<>}
            ]],
            { i(1), i(2), rep(1) }
        )
    ),
    s(
        { trig = "eq", dscr = "an equation environment" },
        fmta([[
            \begin{equation}
                <>
            \end{equation}
            ]],
            { i(1) }
        )
    ),
    s(
        { trig = "fr", dscr = "a math fraction" },
        fmta(
            [[\frac{<>}{<>}]],
            { i(1), i(2) }
        )
    ),
    s(
        { trig = "ur", dscr = "a link" },
        fmta(
            [[\href{<>}{<>}]],
            { i(1, "url"), i(2, "text") }
        )
    )

}
