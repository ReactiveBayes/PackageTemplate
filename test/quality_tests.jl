@testitem "quality:aqua" tags = [:quality] begin
    using Aqua, PkgName
    Aqua.test_all(PkgName; deps_compat = (; check_extras = true))
end

@testitem "quality:jet" tags = [:quality] begin
    using PkgName
    # JET follows Julia's compiler closely, and its releases for Julia 1.10 and 1.11 cannot analyse
    # every package; it runs from 1.12 on.
    if VERSION >= v"1.12"
        using JET
        JET.test_package(PkgName; target_modules = (PkgName,))
    end
end

@testitem "quality:doctests" tags = [:quality] begin
    using Documenter, PkgName
    DocMeta.setdocmeta!(PkgName, :DocTestSetup, :(using PkgName); recursive = true)
    doctest(PkgName; manual = false)
end
