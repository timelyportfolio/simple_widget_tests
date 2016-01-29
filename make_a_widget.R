# see https://github.com/ramnathv/htmlwidgets/issues/176#issuecomment-176912516
# install simpler-widgets branch of htmlwidgets
# devtools::install_github("ramnathv/htmlwidgets@feature/simpler-widgets")

library(htmlwidgets)

# try to scaffold a simple widget on something
scaffoldSimpleWidget(
  "trianglify",
  bowerPkg = "trianglify",
  dir_ = "trianglify"
)