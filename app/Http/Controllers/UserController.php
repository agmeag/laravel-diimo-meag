<?php

namespace App\Http\Controllers;

use Throwable;
use App\models\User;
use App\Rules\Birthday;
use App\Rules\PhoneNumber;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function create(Request $request)
    {
        $request->validate([
            'name' => 'required|string',
            'email' => 'required|string|email|unique:users',
            'password' => 'required|string|confirmed',
            'username' => 'required|string|unique:users',
            'birthday' => ['required', 'string', new Birthday],
            'phone' => ['required', new PhoneNumber],
        ]);
        User::store($request->all());
        return response()->json([
            'message' => 'Successfully created user!'
        ], 201);
    }

    public function read(Request $request)
    {
        return response()->json($request->user());
    }

    public function update(Request $request, User $user)
    {
        $request->validate([
            'birthday' => ['string', new Birthday],
            'phone' => [new PhoneNumber],
            'name' => 'string',
        ]);
        $user->fill($request->only('name', 'phone', 'birthday'))->update();
        return response()->json($user);
    }

    public function delete(User $user)
    {
        try {
            $user->delete();
        } catch (\Exception $e) {
            return response()->json([
                'message' => 'User does not exists and cannot be deleted'
            ]);
        }
        return response()->json([
            'message' => 'Successfully deleted'
        ]);
    }

    public function list()
    {
        return response()->json(User::paginate(10));
    }
}
