using AoGExtensions
using Documenter

DocMeta.setdocmeta!(AoGExtensions, :DocTestSetup, :(using AoGExtensions); recursive=true)

makedocs(;
    modules=[AoGExtensions],
    authors="Fabian Greimel <fabgrei@gmail.com> and contributors",
    repo="https://github.com/greimel/AoGExtensions.jl/blob/{commit}{path}#{line}",
    sitename="AoGExtensions.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://greimel.github.io/AoGExtensions.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/greimel/AoGExtensions.jl",
)
