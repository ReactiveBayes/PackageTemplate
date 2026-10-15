# The documentation site of PkgName. Build it with `make docs`, or `julia --project=docs docs/make.jl`.
using Documenter
using PkgName

DocMeta.setdocmeta!(PkgName, :DocTestSetup, :(using PkgName); recursive = true)

makedocs(
    modules = [PkgName],
    sitename = "PkgName.jl",
    # Every docstring appears on a page.
    checkdocs = :all,
    pages = ["Overview" => "index.md"],
    format = Documenter.HTML(prettyurls = get(ENV, "CI", nothing) == "true"),
)

deploydocs(
    repo = "github.com/ReactiveBayes/PackageTemplate.git",
    devbranch = "main",
    # A preview for every pull request but CompatHelper's, whose documentation nobody reviews;
    # `DocPreviewCleanup.yml` deletes it when the pull request closes.
    push_preview = !startswith(get(ENV, "GITHUB_HEAD_REF", ""), "compathelper/"),
)
