library(FLa4a)

# grMod and grInvMod are formulae for t~len and len~t
vb <- ~linf*(1-exp(-k*(t-t0)))
inverse_vb <- ~t0-1/k*log(1-len/linf)

# We also create some parameters (matching those
# in the formulae, other than len and t)
# We set some units too (not essential)
vb_params <- FLPar(linf=58.5, k=0.086, t0=0.001,
                   units=c("cm","ano-1","ano"))


vb_par_mf <- FLPar(array(dim=c(3,2,1),dimnames=list(params=c("linf","k","t0"), units=c("male","female"), iter=1)))
vb_par_mf["linf",] <- c(50,60)
vb_par_mf["k",] <- c(0.09,0.08)
vb_par_mf["t0",] <- c(0.01,0.001)

vb_gr <- a4aGr(grMod=vb, grInvMod=inverse_vb, params=vb_par_mf)


# Make the a4aGr object
vb_gr <- a4aGr(grMod=vb, grInvMod=inverse_vb,
               params=vb_params)
