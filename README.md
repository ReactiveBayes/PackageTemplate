# PkgName

[![CI](https://github.com/ReactiveBayes/PackageTemplate/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/ReactiveBayes/PackageTemplate/actions/workflows/CI.yml)
[![Docs: dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://reactivebayes.github.io/PackageTemplate/dev/)
[![Coverage](https://codecov.io/gh/ReactiveBayes/PackageTemplate/graph/badge.svg)](https://codecov.io/gh/ReactiveBayes/PackageTemplate)
[![Code style: Runic](https://img.shields.io/badge/code_style-%E1%9A%B1%E1%9A%A2%E1%9A%BE%E1%9B%81%E1%9A%B2-black)](https://github.com/fredrikekre/Runic.jl)
[![Aqua](https://raw.githubusercontent.com/JuliaTesting/Aqua.jl/master/badge.svg)](https://github.com/JuliaTesting/Aqua.jl)

<!-- template:start -->
> **This is the ReactiveBayes template for a Julia package.** It is a working package with one
> example function: tests with TestItemRunner, Aqua and JET, a documentation site with
> Documenter, benchmarks with PkgBenchmark, Runic formatting, and CI, documentation, CompatHelper
> and TagBot set up.
>
> **Writing message passing rules?** Start from
> [MessagePassingRulesTemplate.jl](https://github.com/ReactiveBayes/MessagePassingRulesTemplate.jl)
> instead: it is laid out as every rule package is, with an example node and its tests.
>
> 1. **Use this template** → *Create a new repository*, named `<Name>.jl`.
> 2. Clone it and run, from its root, `julia setup.jl <Name>` (`--owner <GitHub owner>`, default
>    `ReactiveBayes`; `--author "Name <email>"`). It renames the package, gives it a new UUID and
>    links, and prints the steps left: the documentation key, GitHub Pages and registration.
> 3. Replace the example function, `greet`, with your code, its tests and its documentation.
>    `make test` and `make docs` check them as CI does.
>
> Everything between these lines disappears with `setup.jl`.
<!-- template:end -->

Replace this paragraph with what your package does.

```julia
import Pkg; Pkg.add("PkgName")
```

- Documentation: <https://reactivebayes.github.io/PackageTemplate/dev/>. `make docs` builds it
  locally, into `docs/build`.
- Tests: `make test` runs the suite as CI does; `make test test_args="tag:quality"` selects
  items by tag, by name or by file. `make help` lists the other targets: `format`,
  `check-format`, `benchmark`, `docs-serve`.
- Julia 1.10 or later. MIT licence.
