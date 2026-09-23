# Runs after every `quarto render`. GitHub Pages reads .nojekyll from the
# served folder (docs/), not the repo root — this guarantees it exists there.
out_dir <- Sys.getenv("QUARTO_PROJECT_OUTPUT_DIR", "docs")
dir.create(out_dir, showWarnings = FALSE, recursive = TRUE)
invisible(file.create(file.path(out_dir, ".nojekyll")))