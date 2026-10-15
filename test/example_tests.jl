# One file of test items per part of the package; each item is self-contained.

@testitem "greet" tags = [:example] begin
    using PkgName
    @test greet("Julia") == "Hello, Julia!"
end
