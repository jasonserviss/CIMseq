.onLoad <- function(...) {
  S7::S7_on_load()
}

.onUnload <- function(...) {
  S7::S7_on_unload()
}

.onLoad <- function(libname, pkgname) {
  S7::methods_register()
}

S7::S7_on_build()
