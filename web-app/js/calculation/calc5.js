var txt='{"employees":['+
 '{"calculation":"LOAN_TO_VALUE", "formula":"0.65"},'+
 '{"calculation":"TIME_TO_HOLD", "formula":"3"},'+
 '{"calculation":"REPAIR_COSTS", "formula":"25000"},'+
 '{"calculation":"AFTER_REPAIR_VALUE", "formula":"200000"},'+
 '{"calculation":"ARV", "formula":"200000"},'+
 '{"calculation":"POINTS", "formula":"5.5"},'+
 '{"calculation":"OFFER_PRICE", "formula":"100000"},'+
 '{"calculation":"DOWN_PAYMENT ", "formula":"$OFFER_PRICE * .03"},'+
 '{"calculation":"EMD", "formula":"$OFFER_PRICE * .1"},'+
 '{"calculation":"INTEREST_RATE", "formula":"0.15"},'+
 '{"calculation":"GAP_RATE", "formula":"0.2"},'+
 '{"calculation":"REALTOR_FEES", "formula":"$ARV * 0.08"},'+
 '{"calculation":"LOAN_AMOUNT", "formula":"$AFTER_REPAIR_VALUE * $LOAN_TO_VALUE"},'+
 '{"calculation":"ESCROW_AND_INSURANCE", "formula":"(1000 + ($OFFER_PRICE/1000 * 4))"},'+
 '{"calculation":"TOTAL_INVESTMENT_COST", "formula":"$ESCROW_AND_INSURANCE +  $OFFER_PRICE + $REPAIR_COSTS"},'+
 '{"calculation":"COST_OF_POINTS", "formula":"$POINTS * $LOAN_AMOUNT/100"},'+
 '{"calculation":"GAP_AMOUNT", "formula":"$TOTAL_INVESTMENT_COST - $LOAN_AMOUNT - $DOWN_PAYMENT - $EMD"},'+
 '{"calculation":"MONTHLY_HOLDING_COSTS", "formula":"($LOAN_AMOUNT * $INTEREST_RATE) / 12"},'+
 '{"calculation":"TOTAL_HOLDING_COSTS", "formula":"$MONTHLY_HOLDING_COSTS * $TIME_TO_HOLD"},'+
 '{"calculation":"CASH_PROFIT", "formula":"$AFTER_REPAIR_VALUE - $TOTAL_INVESTMENT_COST - $REALTOR_FEES"},'+
 '{"calculation":"HML_PROFIT", "formula":"$CASH_PROFIT - $COST_OF_POINTS - $TOTAL_HOLDING_COSTS"},'+
 '{"calculation":"GAP_FUNDING_FEE", "formula":"$GAP_AMOUNT * $GAP_RATE"},'+
 '{"calculation":"HML_WITH_GAP_PROFIT", "formula":"$HML_PROFIT  - $GAP_FUNDING_FEE"}]}';




var formulas = JSON.parse(txt);
var calcs = new Object();
for (var i=0;i<formulas.employees.length;i++)
{ 
    calcs[formulas.employees[i].calculation] = formulas.employees[i].formula.replace(/[$]/g, 'f.');
    
    //calcs.["LOAN_TO_VALUE"] = "HI";
   //data["LOAN_TO_VALUE"] = 4;


}
var iproperty = new Object();
iproperty={sqft:2437,bedrooms:3, bathrooms:5, pool:true};
var iquantity = 10;
var iunitCost = 14;
var iformula = 'IF (property.sqft<1350) THEN ((property.sqft/9)*0.5)*unitCost ELSE ((property.sqft/9)*0.7)*unitCost END';
//http://jsfiddle.net/xWHss/34/#run
//var myfunc = "function (quantity, unitCost, property) {return MYFUNCTION;}"
//var as_string = myfunc.toString();
//as_string = as_string.replace('MYFUNCTION', formula );
//var as_func = eval('(' + as_string + ')');

//alert(String(as_func(100, 10, property)));
var result = "";
var myfunc = function (calculation, f) {
    for (var prop in f) {
      for (var property in f) {
        f[property] = f[property].replace("f."+prop, "("+f[prop]+")");
      }
      f[prop] += ";";
    }
    //return f[calculation];
    return myeval(f[calculation]);
}

var myeval = function (formula) {
    formula = formula.replace('IF ', 'if' );
    formula = formula.replace(' THEN ', '{' );
    formula = formula.replace(' ELSE ', '} else {' );
    formula = formula.replace(' END', '}' );
    formula += ';';
	
    return parseFloat( eval(formula).toFixed(2) );
}
//var as_string = myfunc.toString();
//as_string = as_string.replace('MYFUNCTION', formula );
//var as_func = eval('(' + as_string + ')');

alert(String(myfunc("HML_WITH_GAP_PROFIT", calcs)));
//alert(calcs["TOTAL_INVESTMENT_COST"]);
//alert(data["LOAN_TO_VALUE"]);