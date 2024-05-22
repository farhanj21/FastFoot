<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FastFoot - Sign Up</title>
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

        .signup-container {
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

        input[type="text"], input[type="password"], input[type="email"] {
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
    <div class="signup-container">
        <h1>FastFoot</h1>
        <form action="/signup" method="POST">
            <input type="text" name="username" placeholder="Username" required>
            <input type="email" name="email" placeholder="Email" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="password" name="confirm_password" placeholder="Confirm Password" required>
            <div class="button-container">
		<a href="Dashboard.aspx"><button type="button">Sign Up</button></a>
		</div>
        </form>
    </div>
</body>
</html>
