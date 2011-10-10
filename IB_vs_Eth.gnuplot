set title "Latency Comparison - 4xDDR IB vs 1Gb/s Ethernet"
set grid
set log xy
set xlabel "Problem Size (bytes)"
set ylabel "Latency (microsec)"
set terminal pdf color dashed
set output "IB_vs_Eth_latency.pdf"
set key left top
plot "bw_latency_ethvsib_comparison.gnuplot.input" u 1:2 title "4xDDR_IB", "bw_latency_ethvsib_comparison.gnuplot.input" u 1:3 title "1GbE"

set title "Bandwidth Comparison - 4xDDR IB vs 1Gb/s Ethernet"
set grid
set log xy
set xlabel "Problem Size (bytes)"
set ylabel "Bandwidth (MB/s)"
set terminal pdf color dashed
set output "IB_vs_Eth_Bandwidth.pdf"
set key right bottom
plot "bw_latency_ethvsib_comparison.gnuplot.input" u 1:4 title "4xDDR_IB", "bw_latency_ethvsib_comparison.gnuplot.input" u 1:5 title "1GbE"

