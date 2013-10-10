set title "One-way Latency Comparison - 4xQDR IB vs 1Gb/s Ethernet"
set grid
set log xy
set mxtics 10
set mytics 10
set xlabel "Message Payload Size (bytes)"
#set ylabel "One-way Latency (microsec)"
set ylabel "One-way Latency ({/Symbol m}s)"
#set terminal pdf color dashed
set terminal pdf color dashed enhanced
set output "IB_vs_Eth_latency.pdf"
set key left top
plot "bw_latency_ethvsib_comparison.gnuplot.input" u 1:2 title "4xQDR IB", "bw_latency_ethvsib_comparison.gnuplot.input" u 1:3 title "1GbE"

set title "Bandwidth Comparison - 4xQDR IB vs 1Gb/s Ethernet"
set grid
set log xy
set mxtics 10
set mytics 10
set xlabel "Message Payload Size (bytes)"
set ylabel "Bandwidth (MB/s)"
set terminal pdf color dashed
set output "IB_vs_Eth_Bandwidth.pdf"
set key right bottom
plot "bw_latency_ethvsib_comparison.gnuplot.input" u 1:4 title "4xQDR IB", "bw_latency_ethvsib_comparison.gnuplot.input" u 1:5 title "1GbE"

