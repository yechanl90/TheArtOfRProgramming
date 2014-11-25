# Set graphical output file
pdf("xh.pdf")

# Generate 100 N(0, 1) variates and plot their histogram
hist(rnorm(1000000))

# Close the graphical output file
dev.off()
