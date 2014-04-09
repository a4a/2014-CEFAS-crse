#####################################################################
# Short FLR demo 
# (20140407)EJ
#####################################################################

#====================================================================
# create
#====================================================================

## OPTION 1 - READ CSV/TEXT 

# read.csv

# set basic data structure 
flqIni <- FLQuant(NA, dimnames=list(len=10:100, year=1980:2010))

# create FL*
stk <- FLStockLen(flqIni)
stk <- FLStock(flqIni)

idx <- FLIndex(flqIni)

sr <- FLSR(model="bevholt", ssb=quantSums(flqIni)[,-dims(flqIni)$max], rec=flqIni[1,-1])

## OPTION 2 - READ DATA STRUCTURE

stk <- readFLStock("index.txt")
idx <- read.FLIndices("tunfile.txt")


#====================================================================
# load ple4
#====================================================================
library(FLCore)
data(ple4.index)
data(ple4)

#====================================================================
# FLStock
#====================================================================
plot(ple4)
summary(ple4)


ple4[,"2003"]


#====================================================================
# FLIndex
#====================================================================
plot(ple4.index)
summary(ple4.index)



#====================================================================
# FLSR
#====================================================================
ple4.sr <- as.FLSR(ple4, model="bevholt")
ple4.sr <- fmle(ple4.sr)
plot(ple4.sr)

#====================================================================
# FLlst
#====================================================================

flqs <- FLQuants(catch=catch(ple4), biomass=stock(ple4))

xyplot(data~year, groups=qname, data=flqs, type="l", auto.key=TRUE)

#====================================================================
# Commonly used methods
#====================================================================

# plot, summary, [, dim(s), range, rnorm, rlnorm, qapply
# accessors (same name as the slot), 
# replacement (same name as the slot but with <-
# aritmetics *Summs, *Means, *Vars, *Medians, *CV









