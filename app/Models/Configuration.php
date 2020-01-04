<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Configuration extends Model
{
    protected $table = 'configuration';
    protected $fillable = ['currency_id','currency_space','currency_position','digit_separator','footer_box_1','footer_box_2','footer_box_3','footer_box_4','customer_approve','default_country','default_state','store_phone','store_email','store_name','add_box_1','add_box_2','currency_space','company_name','company_email','company_mobile','company_details','company_address','top_footer','bottom_footer','expire_day_limit','is_scanned','report_delivery_time_limit'];
}
