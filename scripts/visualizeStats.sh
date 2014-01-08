# Show chart of word count progress
cat logs/stats.csv | Rscript workspace/vis-progress.r
open progress.png
