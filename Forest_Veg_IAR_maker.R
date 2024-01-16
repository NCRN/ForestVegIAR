library(rmarkdown)
library(purrr)

Year<-2023

AllYears<-2019:2023

ParksCodes<-c("ANTI","CATO", "CHOH","GWMP","HAFE","MANA","MONO","NACE","PRWI","ROCR","WOTR")

OutFiles<-paste0(ParksCodes,"-",Year,"-","IAR.html")


RenderIAR<-function(Code,File,Year,ReportAllYears){ 
  render(input='ForestVegIAR.Rmd',params=list(ReportPark=Code, ReportYear=Year, ReportAllYears=AllYears), output_file = File)
}

walk2(.x=ParksCodes, .y=OutFiles, .f=RenderIAR, Year=Year, ReportAllYears=AllYears)
