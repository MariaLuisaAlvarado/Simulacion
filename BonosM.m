ytms=xlsread('Bonos.xlsx','PRECIOS','F3:F31');
cupon=xlsread('Bonos.xlsx','PRECIOS','I3:I31');
settle='27-dic-2017';
fechas=xlsread('Bonos.xlsx','PRECIOS','J3:J31');
maturity=x2mdate(fechas,0);
[Precio Interes]=bndprice(ytms/100,cupon,settle,maturity);
DMOD=bnddury(ytms/100,cupon,settle,maturity);