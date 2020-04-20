#Install packages and libraries 
if (!require("quantmod")){
  install.packages("quantmod")
  library(quantmod)
}
#Set dates 
start <- as.Date("2018-01-01")
end <- as.Date("2019-12-31") #date are already set up in this format, si può fare anche mettendo le date nella funzione getsymbols 
#Get dataframe or timeseries
getSymbols("AAPL", src="yahoo", from=start, to=end) #The result of this code line is an xts object calle AAPL reassuming date,high,low,open,close,volume,adjusted close

#To check the element class
class(AAPL)

#Quick view
head(AAPL)###Most Recent values 
tail(AAPL)###Oldest values
View(AAPL)###complete OVERVIEW

#Plot a time series for closing prices
plot(AAPL[,"AAPL.Close"], main="AAPL") ##restituisce un grafico semplice a linea con i dati di chiusura

#Plot the candleChart for AAPL
candleChart(AAPL, up.col="black", dn.col="red", theme="white")### disegna effettivament un grafico a candele, rossi verdi o bianchi e neri

