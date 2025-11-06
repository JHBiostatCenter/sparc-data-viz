#!/usr/bin/env Rscript

# Render all Quarto files for the sparc-data-viz site

library(quarto)

# Get the project root directory
project_root <- here::here()
setwd(project_root)

message("=== Rendering SPARC Data Visualization Site ===\n")

# Render main site files
message("Rendering main site files...")
message("  - index.qmd")
quarto_render("index.qmd")

message("  - presentation.qmd")
quarto_render("presentation.qmd")

# Render all example notebooks
message("\nRendering example notebooks...")
example_files <- list.files(
  "examples",
  pattern = "\\.qmd$",
  full.names = TRUE
)

# Exclude the index file from examples
example_files <- example_files[!grepl("index\\.qmd$", example_files)]

for (file in example_files) {
  message(sprintf("  - %s", basename(file)))
  quarto_render(file)
}

message("\n=== Rendering complete! ===")
message(sprintf("Total files rendered: %d", length(example_files) + 2))
message("\nOutput directory: docs/")
message("Site is ready to be served from docs/ folder")
