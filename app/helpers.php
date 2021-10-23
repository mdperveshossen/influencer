<?php

use Illuminate\Support\Facades\Auth;

function user()
{
    return Auth::user();
}
function single_user($id)
{
    if (App\User::find($id) == '') {
        return App\User::withTrashed()->find(4)->name;
    } else {
        return App\User::find($id)->name;
    }
}

function complete_order()
{
    return App\Order::where('offer_activity', 3)->get()->count();
}
function active_order()
{
    return App\Order::where('offer_activity', 2)->get()->count();
}
function new_order()
{
    return App\Order::where('offer_activity', 1)->get()->count();
}

function auth_new_order()
{
    return App\Order::where('user_id', Auth::id())->where('offer_activity', 1)->get()->count();
}
function auth_active_order()
{
    return App\Order::where('user_id', Auth::id())->where('offer_activity', 2)->get()->count();
}
function auth_complete_order()
{
    return App\Order::where('user_id', Auth::id())->where('offer_activity', 3)->get()->count();
}


function shop_name($id)
{
    return App\Shops_detail::withTrashed()->find($id)->name;
}
function shop_photo($id)
{
    return App\Shops_detail::withTrashed()->find($id)->thumbnail;
}
