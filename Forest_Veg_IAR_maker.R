library(rmarkdown)
library(purrr)

Year<-2021

AllYears<-2017:2021

ParksCodes<-c("ANTI", "CHOH","GWMP","HAFE","MANA","NACE","PRWI")

OutFiles<-paste0(ParksCodes,"-",Year,"-","IAR.html")


RenderIAR<-function(Code,File,Year,ReportAllYears){ 
  render(input='ForestVegIAR.Rmd',params=list(ReportPark=Code, ReportYear=Year, ReportAllYears=AllYears), output_file = File)
}

walk2(.x=ParksCodes, .y=OutFiles, .f=RenderIAR, Year=Year, ReportAllYears=AllYears)
