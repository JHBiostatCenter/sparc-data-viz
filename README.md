# Data Visualization with R

Materials for learning data visualization using R, ggplot2, and the grammar of graphics.

## View Online

Visit the site at: `https://yourusername.github.io/sparc-data-viz/`

## Contents

- **Presentation**: Comprehensive slides covering Tufte's principles, ggplot2 workflow, and hands-on examples
- **Examples**: Interactive Quarto notebooks organized by topic (applications, refining, advanced topics)

## Quick Start

### Prerequisites

- R (>= 4.0)
- Quarto CLI
- Required R packages (installed automatically when rendering notebooks)

### Building the Site Locally

From the project root:

```bash
# Render the main site (presentation, index, etc.)
quarto render

# Render the examples
cd examples
quarto render
cd ..
```

This will output everything to the `docs/` folder, which GitHub Pages serves from.

### Preview Locally

```bash
quarto preview
```

## GitHub Pages Setup

1. Push the repository to GitHub
2. Go to repository Settings → Pages
3. Set Source to "Deploy from a branch"
4. Set Branch to "main" and folder to "/docs"
5. Save and wait a few minutes for deployment

The `.nojekyll` file in the `docs/` folder tells GitHub Pages not to use Jekyll processing.

## Project Structure

```
.
├── _quarto.yml              # Root site config (outputs to docs/)
├── index.qmd                # Landing page
├── presentation.qmd         # Main presentation slides
├── examples/
│   ├── _quarto.yml          # Examples config (outputs to docs/examples/)
│   ├── index.qmd            # Examples index page
│   ├── applications_*.qmd   # Application examples
│   ├── prams_*.qmd          # PRAMS data examples
│   ├── colors_*.qmd         # Color and theming examples
│   └── ...                  # Other example notebooks
├── data/                    # Data files
├── images/                  # Image assets
└── docs/                    # Generated site (served by GitHub Pages)
```

## Contact

Erik Westlund
Johns Hopkins Biostatistics Center
ewestlund@jhu.edu

## License

[Add your license here]
