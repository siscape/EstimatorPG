var iproperty = new Object();
iproperty={sqft:2437,bedrooms:3, bathrooms:5, pool:true};
var iquantity = 10;
var iunitCost = 14;
var iformula = 'IF (property.sqft<1350) THEN ((property.sqft/9)*0.5)*unitCost ELSE ((property.sqft/9)*0.7)*unitCost END';
http://jsfiddle.net/xWHss/34/#run
//var myfunc = "function (quantity, unitCost, property) {return MYFUNCTION;}"
//var as_string = myfunc.toString();
//as_string = as_string.replace('MYFUNCTION', formula );
//var as_func = eval('(' + as_string + ')');

//alert(String(as_func(100, 10, property)));

var myfunc = function (quantity, unitCost, property, formula) {
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

alert(String(myfunc(iquantity, iunitCost, iproperty, iformula)));