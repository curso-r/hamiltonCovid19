summaryTab_table <- function(tab) {

  col_spec <- purrr::map2(
    c("left", "left", "center"),
    c(75, 78, 75),
    ~ reactable::colDef(align = .x, minWidth = .y, maxWidth = 200)
  )

  col_spec <- purrr::set_names(col_spec, names(tab))

  reactable::reactable(
    tab,
    defaultPageSize = 10,
    searchable = TRUE,
    pagination = TRUE,
    rownames = TRUE,
    highlight = TRUE,
    height = 580,
    paginationType = "simple",
    showPageInfo = FALSE,
    defaultColDef = reactable::colDef(
      align = "left",
      format = reactable::colFormat(separators = TRUE),
      maxWidth = 40,
      style = "font-size: 11px;"
    ),
    columns = col_spec
  )

}

