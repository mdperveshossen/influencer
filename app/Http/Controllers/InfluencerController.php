<?php

namespace App\Http\Controllers;

use App\Order;
use App\Logo;
use App\Social;
use App\Shops_detail;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Auth;

class InfluencerController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }


    public function dashboardinfluencer()
    {
        return view('influencer.dashboard', [
            'orders' => Order::where('user_id', auth::id())->latest()->paginate(12),
        ]);
    }
    public function category()
    {
        return view('frontend.category',[
            'socials' => Social::latest()->get(),
            'logo' => Logo::find(1),
        ]);
    }
    public function deliveryoffers()
    {
        return view('frontend.experienceoffers', [
            'shops' => Shops_detail::where('type', 1)->latest()->get(),
            'type' => 1,
            'socials' => Social::latest()->get(),
            'logo' => Logo::find(1),
        ]);
    }
    public function experienceoffers()
    {
        return view('frontend.experienceoffers', [
            'shops' => Shops_detail::where('type', 2)->latest()->get(),
            'type' => 2,
            'logo' => Logo::find(1),
            'socials' => Social::latest()->get(),
        ]);
        // return view('frontend.experienceoffers');
    }
    public function dinneroffers()
    {
        return view('frontend.dinneroffers', [
            'shops' => Shops_detail::where('type', 3)->latest()->get(),
            'type' => 3,
            'logo' => Logo::find(1),
            'socials' => Social::latest()->get(),
        ]);
        // return view('frontend.dinneroffers');
    }
    public function offerdetail($id)
    {
        return view('frontend.shop_detail', [
            'offer_details' => Shops_detail::find($id),
            'socials' => Social::latest()->get(),
            'logo' => Logo::find(1),
        ]);
    }

    public function offerrequest($id)
    {
        Order::insert([
            'user_id' => Auth::id(),
            'offer_id' => $id,
            'created_at' => Carbon::now(),
        ]);
        return back()->with('request_status', 'Offer request sent successfully!!');
    }
    
    public function editprofile()
    {
        return view('admin.home.edit_profile');
    }
    public function changename(Request $request)
    {
        User::find(Auth::id())->update([
            'name' => $request->name,
        ]);
        return back()->with('changename', 'Name Change Successfully!@!');
    }
    function changephoto(Request $request)
    {
        if ($request->hasFile('profile_photo')) {
            if (Auth::user()->profile_photo != 'default.jpg') {
                $old_photo_location = 'public/uploads/profile_photos/' . Auth::user()->profile_photo;
                unlink(base_path($old_photo_location));
            }
            $uploaded_photo = $request->file('profile_photo');
            $new_file_name = Auth::id() . "." . $uploaded_photo->getClientOriginalExtension();
            $new_file_location = 'public/uploads/profile_photos/' . $new_file_name;
            Image::make($uploaded_photo)->resize(300, 300)->save(base_path($new_file_location));
            User::find(Auth::id())->update([
                'profile_photo' => $new_file_name,
            ]);
            return back()->with('profile_photo', 'Your Profile Photo Changed Successfully!!!');
        } else {
            return back();
        }
    }
    function changepassword(Request $request)
    {
        if (Hash::check($request->old_password, Auth::user()->password)) {
            if ($request->old_password == $request->password) {
                return back()->with('same_pass', 'your new password is like your current password!!!');
            } else {
                User::find(Auth::id())->update([
                    'password' => Hash::make($request->password)
                ]);
                return back()->with('chang_pass', 'your Password Change Successfully!!!');
            }
        } else {
            return back()->with('not_match', 'Your Password is not match!!!!');
        }
    }
}
