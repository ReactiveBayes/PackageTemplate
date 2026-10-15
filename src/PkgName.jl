"""
    PkgName

Replace this docstring with what your package does. It is the first thing on the documentation
site's overview.
"""
module PkgName

export greet

"""
    greet(name)

An example function: replace it with your package's own, each with a docstring, which the
documentation lists and whose examples run as doctests.

# Examples

```jldoctest
julia> greet("Julia")
"Hello, Julia!"
```
"""
greet(name::AbstractString) = "Hello, $(name)!"

end
