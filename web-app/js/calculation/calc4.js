 '{"calculation":"LOAN_TO_VALUE", "formula":"0.65"},'+
 '{"calculation":"TIME_TO_HOLD", "formula":"3"},'+
 '{"calculation":"REPAIR_COSTS", "formula":"250000"},'+
 '{"calculation":"AFTER_REPAIR_VALUE ", "formula":"200000"},'+
 '{"calculation":"POINTS", "formula":"5.5"},'+
 '{"calculation":"OFFER_PRICE", "formula":"100000"},'+
 '{"calculation":"DOWN_PAYMENT ", "formula":"$OFFER_PRICE * .03"},'+
 '{"calculation":"EMD", "formula":"$OFFER_PRICE * .1"},'+
 '{"calculation":"INTEREST_RATE", "formula":"0.15"},'+
 '{"calculation":"GAP_RATE", "formula":"0.2"},'+
 '{"calculation":"REALTOR_FEES ", "formula":"$ARV * 0.08"},'+
 '{"calculation":"LOAN_AMOUNT", "formula":"$AFTER_REPAIR_VALUE * $LOAN_TO_VALUE"},'+
 '{"calculation":"ESCROW_AND_INSURANCE", "formula":"(1000 + ($OFFER_PRICE/1000 * 4))"},'+
 '{"calculation":"TOTAL_INVESTMENT_COST", "formula":"$ESCROW_AND_INSURANCE +  $OFFER_PRICE + $REPAIR_COSTS"},'+
 '{"calculation":"COST_OF_POINTS", "formula":"$POINTS * $LOAN_AMOUNT/100"},'+
 '{"calculation":"GAP_AMOUNT", "formula":"$TOTAL_INVESTMENT_COST - $LOAN_AMOUNT - $DOWN_PAYMENT - $EMD"},'+
 '{"calculation":"MONTHLY_HOLDING_COSTS", "formula":"($LOAN_AMOUNT * $INTEREST_RATE) / 12"},'+
 '{"calculation":"TOTAL_HOLDING_COSTS", "formula":"$MONTHLY_HOLDING_COSTS * $TIME_TO_HOLD"},'+
 '{"calculation":"CASH_PROFIT", "formula":"$AFTER_REPAIR_VALUE - $TOTAL_INVESTMENT_COST - $REALTOR_FEES"},'+
 '{"calculation":"HML_PROFIT", "formula":"$CASH_PROFIT - $COST_OF_POINTS - $TOTAL_HOLDING_COSTS"},'+
 '{"calculation":"GAP_FUNDING_FEE", "formula":"$GAP_AMOUNT * GAP_RATE"},'+
 '{"calculation":"HML_WITH_GAP_PROFIT", "formula":"$HML_PROFIT  - $GAP_FUNDING_FEE"},'
