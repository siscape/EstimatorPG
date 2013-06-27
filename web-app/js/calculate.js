function populateCities(data) {
    //alert('BYE');

    // var $myInput = $('#cashProfit');
    var formulas = JSON.parse(data);
    var calcs = new Object();
    for (var i=0;i<formulas.employees.length;i++)
    {
        calcs[formulas.employees[i].calculation] = formulas.employees[i].formula.replace(/[$]/g, 'f.');
    }

    var setIfNotNull = function(variable, selector) {
        if (selector.val() != '') {
           calcs[variable] = selector.val();
        } else {
            selector.val(calcs[variable]);
        }
    }
    setIfNotNull("OFFER_PRICE", $('#offerPrice'));
    setIfNotNull("ARV", $('#afterRepairValue'));
    setIfNotNull("REPAIR_COSTS", $('#repairCosts'));


   // calcs["ARV"] = $('#afterRepairValue').val();
   // calcs["REPAIR_COSTS"] = $('#repairCosts').val();
    calcs["TIME_TO_HOLD"] = String(eval(calcs["REPAIR_COSTS"])/5000);
    var myfunc = function (calculation, f) {
        for (var prop in f) {
            for (var property in f) {
                var reg = new RegExp("f."+prop,"g");
                f[property] = f[property].replace(reg, "("+f[prop]+")");
            }
        }

        return myeval(f[calculation]);
    }

    var myeval = function (formula) {
        formula = formula.replace('IF ', 'if' );

        formula = formula.replace(' THEN ', '{' );
        formula = formula.replace(' ELSE ', '} else {' );
        formula = formula.replace(' END', '' );
        formula += ';';
        //$calculation.val(formula);
        return parseFloat( eval(formula).toFixed(2) );
    }
    var calculate = function(input) {
       return String(myfunc(input, calcs));
    }
    $('#realtorFees').val(calculate("REALTOR_FEES"));
    $('#closingCosts').val(calculate("ESCROW_AND_INSURANCE"));
    $('#totalInvestmentCost').val(calculate("TOTAL_INVESTMENT_COST"));
    $('#hmlAmount').val(calculate("LOAN_AMOUNT"));
    $('#emdRequired').val(calculate("EMD"));
    $('#gapAmount').val(calculate("GAP_AMOUNT"));
    $('#gapCost').val(calculate("GAP_FUNDING_FEE"));
    $('#hmlCost').val(calculate("TOTAL_HOLDING_COSTS"));
    $('#hmlProfit').val(calculate("HML_PROFIT"));
    $('#hmlWithGapProfit').val(calculate("HML_WITH_GAP_PROFIT"));
    $('#weeksToHold').val(calculate("TIME_TO_HOLD"));
    var cashprofit = 'cashProfit';
    $('#'+cashprofit).val(calculate("CASH_PROFIT"));


    //$myInput.val(String(myfunc("CASH_PROFIT", calcs)));

   // $myInput.keydown();
   // $calculation.keydown();




   // $('#notes').val(data);
}
function populateExpenses(data) {

  $('#expenses').append(data);
}
function createExpense(data) {

    $('#expenses').append(data);
    return false;
}

$('#calcButton').click(function(event) {
    event.preventDefault();

});
$('#addExpense').click(function(event) {
    event.preventDefault();

});
