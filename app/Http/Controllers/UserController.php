<?php

namespace App\Http\Controllers;

use App\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\VerifiedMessage;

class UserController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('userrole');
    }
    public function delete($id)
    {
        if (User::find($id)->profile_photo != 'default.jpg') {
            $old_photo_location = 'public/uploads/profile_photos/' . User::find($id)->profile_photo;
            unlink(base_path($old_photo_location));
        }

        User::find($id)->delete();
        return back()->with('delete_status', 'User deleted Successfully!!!');
    }

    public function verified($id)
    {
        User::find($id)->update([
            'email_verified_at' => Carbon::now(),
        ]);
        $user = User::find($id);
        Mail::to($user->email)->send(new VerifiedMessage($user));
        return back()->with('varified_status', 'User verified  successfully!!!');
    }
    public function show($id)
    {
        return view('admin.user.show', [
            'user' => User::find($id)
        ]);
    }
}
