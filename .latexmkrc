# LaTeXmk configuration file
# This file helps control where LaTeX auxiliary files are placed

# Output directory for auxiliary files
$aux_dir = "build";
$out_dir = "build";

# Ensure the build directory exists
system("mkdir -p build");

# Add theme directory to TEXINPUTS path
$ENV{'TEXINPUTS'} = './theme/:' . ($ENV{'TEXINPUTS'} || '');

# PDF generation method
$pdf_mode = 1;

# Use pdflatex with theme directory in search path
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1';

# Enable shell escape if needed (be careful with this)
# $pdflatex = 'pdflatex -interaction=nonstopmode -synctex=1 -shell-escape';

# Clean up auxiliary files when done
$clean_ext = "aux bbl bcf blg brf fdb_latexmk fls lof log lot nav out run.xml snm synctex.gz toc vrb xdv";

# Preview continuously
$preview_continuous_mode = 1;

# Use built-in PDF viewer
$pdf_previewer = 'open -a Preview';