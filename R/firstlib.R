.First.lib <- function(lib,pkg)
{
   library.dynam("NORMT3",pkg,lib)
   cat("NORMT3 loaded\n")
}
