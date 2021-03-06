# Does not work
#=

using BinDeps

@BinDeps.setup

klb = library_dependency("klb", runtime=true, aliases=["libklb.so", "klb.dll"])

deps = [ klb ]

provides(Sources,
         [ URI("https://bitbucket.org/fernandoamat/keller-lab-block-filetype/get/1796d6334bd3.zip") ],
         klb
         )

@BinDeps.install begin


prefix = joinpath(BinDeps.depsdir(klb), "usr")
uprefix = replace(replace(prefix,"\\" => "/"), "C:/" => "/c/")
klbsrcdir   = joinpath(BinDeps.depsdir(klb), "src",    "klb")
klbbuilddir = joinpath(BinDeps.depsdir(klb), "builds", "klb")

println(prefix)
println(uprefix)
println(klbsrcdir)
println(klbbuilddir)
println(joinpath(prefix, "lib", "libklb.dll"))

end

=#