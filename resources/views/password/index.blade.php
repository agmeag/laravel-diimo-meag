<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Laravel Starter</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">

    <!-- Styles -->
    <style>
        html,
        body {
            height: 100%;
            min-height: 100%;
            overflow: hidden;
            width: 100%;
            min-width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 0;
            margin: 0;
            background-color: #7dc689;
            background-image: url('/assets/img/vector.png');
            font-size: 1rem;

        }

        .form-cnt {
            width: 308px;
            background-color: white;
            box-shadow: rgba(9, 30, 66, 0.25) 0px 1px 1px, rgba(9, 30, 66, 0.13) 0px 0px 1px 1px;
            padding: 50px 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            border-radius: 15px;
            font-family: tahoma;
        }

        .input-cnt {
            margin: 8px 0;
            border-radius: 8px;
            border: 1px solid #0000002b;
            width: 200px;
            text-align: center;
            height: 25px;
        }

        .btn-submit {
            background-color: rgba(56, 89, 62);
            color: white;
            transition: all 0.3s;
            cursor: pointer;
            border: none;
            padding: 6px 13px;
            border-radius: 11px;
            box-shadow: rgba(9, 30, 66, 0.25) 0px 1px 1px, rgba(9, 30, 66, 0.13) 0px 0px 1px 1px;
        }

        .btn-submit:hover {
            background-color: rgba(47, 133, 90)
        }
    </style>
</head>

<body>
    <form class="form-cnt" action="/api/password/resetPassword" method="POST">
        <div class="forgot-psw-title">Forgot Password?</div>
        <input class="input-cnt" name="email" hidden placeholder="Enter email" value="{{request()->get('email')}}">
        <input class="input-cnt" name="password" placeholder="Enter new password">
        <input class="input-cnt" name="password_confirmation" placeholder="Confirm new password">
        <input hidden name="token" placeholder="token" value="{{request()->get('token')}}">
        <button type="submit" class="btn-submit">Save</button>
    </form>
</body>

</html>