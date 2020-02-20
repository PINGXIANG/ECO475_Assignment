use C:\Users\MDW615-CAF\Downloads\hw1data.dta, clear

logit y i.x1 i.x2 i.x3 x4 x5 x6 
margin, dydx(i.x2)
margin, dydx(x5)

probit y i.x1 i.x2 i.x3 x4 x5 x6 
margin, dydx(i.x2)
margin, dydx(x5)
