library(rmarkdown)
library(purrr)

Year<-2019

ParksCodes<-c("ANTI", "CATO", "CHOH", "GWMP", "HAFE", "MANA", "MONO", "NACE", "PRWI", "ROCR", "WOTR")

OutFiles<-paste0(ParksCodes,"-",Year,"-","IAR.html")


RenderIAR<-function(Code,File,Year){ 
  render(input='ForestVegIAR.Rmd',params=list(ReportPark=Code, ReportYear=Year), output_file = File)
}

walk2(.x=ParksCodes, .y=OutFiles, .f=RenderIAR, Year=Year)
