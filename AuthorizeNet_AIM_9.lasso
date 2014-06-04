[
include('/AuthorizeNet_AIM_9.inc')

var('AIMParams') = map(
    'x_login'='XXXXXXXXXXXXX',          // configure
    'x_tran_key'='XXXXXXXXXXXXX',
    'x_type'='auth_only',
//  'x_type'='prior_auth_capture',
//  'x_trans_id'='someid',
    'x_card_num'='5424000000000015',    // dummy CC#
    'x_exp_date'='1220',                // December 2020
    'x_amount'='0.01')

var(results) = authorizenet_aim_9($AIMParams, -testdeveloper, -testrequest)
]
<textarea rows="40" cols="80">[$results]</textarea>
