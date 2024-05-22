<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FastFoot - Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #1B1C21;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .login-container {
            background-color: #2E3034;
            padding: 20px;
            border-radius: 5px;
            width: 300px;
            text-align: center;
        }

        h1 {
            color: #fff;
            margin-bottom: 20px;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            box-sizing: border-box;
            border: none;
            border-bottom: 2px solid #fff;
            background-color: transparent;
            color: #fff;
            outline: none;
        }
 	.button-container {
			text-align: center;
		}
		.button-container button {
			display: inline-block;
			background-color: #fff;
			color: #000;
			padding: 10px;
			border: none;
			border-radius: 5px;
			cursor: pointer;
			margin-top: 10px;
			width: 45%;
		}
		
	
		.button-container button:hover {
			background-color: #ccc;
		}
    </style>
</head>
<body>
    <div class="login-container">
        <h1>FastFoot</h1>
        <form action="/login" method="POST">
            <input type="text" name="username" placeholder="Username" required>
            <input type="password" name="password" placeholder="Password" required>
            <div class="button-container">
			<a href="Dashboard.aspx"><button type="button">Login</button></a>
			<a href="SignUp.aspx"><button type="button">Sign Up</button></a>
			
		</div>
        </form>
    </div>
</body>
</html>
