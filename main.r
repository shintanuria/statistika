library(readxl)
datas <- read_excel('D:/KULIAH/semester 3/statistika/tugas/implementasi bahasa R/data.xlsx')
datav <- read.csv('D:/KULIAH/semester 3/statistika/tugas/implementasi bahasa R/pengeluaran.csv')
datas


# selisih
maksimal <- max(datav$pengeluaran)
minimal <- min(datav$pengeluaran)
ranges <- maksimal - minimal
ranges


# rata rata
rata <- sum(datas$xi * datas$fi)/sum(datas$fi)
print(rata)

# median
b <- 40 - 0.5
p <- 10
fn = 35+37+24 
n = length(datav$pengeluaran)
f = 24

median <- b + p * (((0.5*n) - fn) / f)
median

# modus
b1 <- 24 - 24
b2 <- 24 - 32
modus <- b + p * (b1 / (b1 + b2))
modus

# simpangan rata rata
xix <- datas$xi - rata
fixix <- fi * xix
rs <- 1/n * sum(fixix)
rs

# simpangan baku
xix2 <- xix * xix
fixix2 <- fi * xix2
varian <- 1/n * sum( xix2)
varian

sb <- sqrt(varian)
sb
