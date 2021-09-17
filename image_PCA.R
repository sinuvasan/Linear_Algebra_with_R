## library need to open a jpg file
library(jpeg)
## Download from the author’s website
myurl <- "Tora_Sleeping.JPG" 
z <- tempfile()
download.file(myurl,z,mode="wb")
Kitty <- readJPEG(z)
## dimension
d <- dim(Kitty)
d
plot(Kitty)
