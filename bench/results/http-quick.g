set terminal jpeg
set output "http-quick.jpg"

set multiplot layout 2,1

# Where to place the legend/key
set key left top
# Draw gridlines oriented on the y axis
set grid y
set ylabel "Requests/s"
set logscale x
set xlabel "Connections"
set xtics (1,4,32,64)

# Use CSV delimiter instead of spaces (default)
set datafile separator ','

# graph title
set title "Tile serving"
plot for [i=0:*] "results_http.csv" index i using 3:18 \
  with linespoints title columnheader(2)
unset multiplot