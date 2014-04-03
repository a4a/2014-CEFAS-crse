\section{Example}
%***************************************
\begin{frame}[containsverbatim]
	\frametitle{Example I}
<<results=verbatim, eval=FALSE>>=
# load --------------------------------
library(FLCore)
data(ple4.index)
data(ple4)
# FLStock -----------------------------
plot(ple4)
summary(ple4)
# FLQuant -----------------------------
cth <- catch(ple4)
plot(cth)
summary(cth)
@
\end{frame}

\begin{frame}[containsverbatim]
	\frametitle{Example II}
<<results=verbatim, eval=FALSE>>=
# FLIndex -----------------------------
plot(ple4.index)
summary(ple4.index)
# FLSR --------------------------------
ple4.sr <- as.FLSR(ple4, model="bevholt")
ple4.sr <- fmle(ple4.sr)
plot(ple4.sr)
# FLlst -------------------------------
flqs <- FLQuants(c=catch(ple4), b=stock(ple4))
xyplot(data~year, groups=qname, data=flqs, 
 type="l")
@
\end{frame}

