<?php

namespace App\Http\Controllers\API;

use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    public $defaultSuccess = 200;


    public function login(Request $request)
    {
        $validator = \Validator::make($request->all(), [
            'phone'    => 'required|regex:/(01)[0-9]{9}/',
            'password' => 'required|string|min:6'
        ]);

        if ($validator->fails())
        {
            return response()->json(['error' => $validator->errors()], 400);
        }

        if (Auth::attempt(['phone' => $request['phone'], 'password' => $request['password']]))
        {
            $user = Auth::user();
            $success['token'] = $user->createToken('myApp')->accessToken;
            return response()->json(['success' => $success], $this->defaultSuccess);
        } else
        {
            return response()->json(['error' => 'Unauthorised'], 401);
        }
    }


    public function Register(Request $request)
    {
        $validator = \Validator::make($request->all(), [
            'name'       => 'required|string|min:4',
            'email'      => 'required|email|unique:users',
            'phone'      => 'required|regex:/(01)[0-9]{9}/|unique:users',
            'password'   => 'required|string|min:6',
            'c_password' => 'required|same:password'
        ]);

        if ($validator->fails())
        {
            return response()->json(['error' => $validator->errors()], 400);
        }

        //Create random verification number
        $v_code = rand(1000, 9999);

        $user = User::create([
            'name'         => $request['name'],
            'email'        => $request['email'],
            'phone'        => $request['phone'],
            'password'     => bcrypt($request['password']),
            'verification' => $v_code,
        ]);

        if ($user)
        {
            //Sending SMS via Nexmo
            $basic = new \Nexmo\Client\Credentials\Basic(env('NEXMO_KEY'), env('NEXMO_SECRET'));
            $client = new \Nexmo\Client($basic);

            $message = $client->message()->send([
                'to'   => '2' . $request['phone'],
                'from' => 'Library Api',
                'text' => 'Your phone verification number is: ' . $v_code . ' .Please verify at libraryapi.build/api/verify'
            ]);
        }

        $success['token'] = $user->createToken('myApp')->accessToken;
        $success['user'] = $user->name;

        return response()->json(['success' => $success], 201);
    }

    public function details()
    {
        $user = Auth::user();
        return response()->json(['success' => $user], 200);
    }

    public function verify(Request $request)
    {
        $user = Auth::user();
        $validator = \Validator::make($request->all(), [
            'v_code' => 'required|regex:/[0-9]{4}/',
        ]);

        if ($validator->fails())
        {
            return response()->json(['error' => $validator->errors()], 400);
        }

        if ($user['is_verified'] == 1)
        {
            return response()->json(['error' => 'Your phone number is already verified.'], $this->defaultSuccess);
        } else
        {
            if ($user['verification'] == $request->v_code){
                $user->update([
                    'verification'=>'verified',
                    'is_verified'=>1,
                ]);
                return response()->json(['success'=>'Phone number verified successfully.'],$this->defaultSuccess);
            }else{
                return response()->json(['error' => 'Wrong verification number.'], 400);
            }
        }
    }

    public function logout(){
        $user = Auth::user()->token();
        $user->revoke();
        return response()->json(['success'=>'You are now logged out.'],$this->defaultSuccess);
    }
}
