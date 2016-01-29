#' <Add Title...>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
trianglify <- function(..., width = NULL, height = NULL, elementId = NULL) {

  # forward options using x
  x = list(...)

  # create widget
  htmlwidgets::createWidget(
    name = 'trianglify',
    x = x,
    width = width,
    height = height,
    package = 'C:/Users/Kent.TLEAVELL_NT/Dropbox/development/r/simple_widget_tests/trianglify',
    elementId = elementId
  )
}

#' Shiny bindings for trianglify
#'
#' Output and render functions for using trianglify within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a trianglify
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name trianglify-shiny
#'
#' @export
trianglifyOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'trianglify', width, height, package = 'C:/Users/Kent.TLEAVELL_NT/Dropbox/development/r/simple_widget_tests/trianglify')
}

#' @rdname trianglify-shiny
#' @export
renderTrianglify <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, trianglifyOutput, env, quoted = TRUE)
}