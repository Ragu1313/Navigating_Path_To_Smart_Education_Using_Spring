<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Login Page</title>

    <!-- Bootstrap CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Stylesheet -->
    <style>
        * {
            box-sizing: border-box;
            font-family: 'Arial', sans-serif;
        }

        body {
            background-color: #f0f0f0;
        }

        .login-box {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            padding: 40px 30px;
            text-align: center;
        }

        h2 {
            margin-bottom: 20px;
            font-size: 24px;
        }

        .logo {
            width: 50px;
            height: 50px;
            background-color: #333;
            color: #fff;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 30px;
        }

        .input-group label {
            display: none; /* Bootstrap floating labels will handle label positioning */
        }

        .show-password {
            cursor: pointer;
        }

        .gradient-btn {
            background: linear-gradient(45deg, #1a75ff, #ff33cc);
            border: none;
            padding: 12px;
            color: #fff;
            font-size: 16px;
            border-radius: 5px;
            transition: background 0.3s ease;
        }

        .gradient-btn:hover {
            background: linear-gradient(45deg, #ff33cc, #1a75ff);
        }

        .signup-text a {
            color: #1a75ff;
            text-decoration: none;
            font-weight: bold;
        }

        .signup-text a:hover {
            text-decoration: underline;
        }

        /* Responsive adjustments with Bootstrap */
        @media (max-width: 768px) {
            .login-box {
                padding: 30px 20px;
            }

            .logo {
                width: 45px;
                height: 45px;
                font-size: 26px;
            }

            .gradient-btn {
                padding: 12px;
                font-size: 15px;
            }
        }

        @media (max-width: 480px) {
            .login-box {
                padding: 20px 15px;
            }

            .logo {
                width: 40px;
                height: 40px;
                font-size: 24px;
            }

            .gradient-btn {
                padding: 10px;
                font-size: 14px;
            }

            .signup-text {
                font-size: 12px;
            }
        }

        @media (max-width: 360px) {
            .login-box {
                width: 100%;
                padding: 15px;
            }

            .logo {
                width: 35px;
                height: 35px;
                font-size: 20px;
            }

            .gradient-btn {
                padding: 8px;
                font-size: 13px;
            }

            .signup-text {
                font-size: 11px;
            }
        }

    </style>
    <!-- <link rel="stylesheet" href="styles.css"> -->
</head>
<body>
<div class="container d-flex justify-content-center align-items-center min-vh-100">
    <div class="login-box col-12 col-md-6 col-lg-4">
        <h2 class="text-center">Welcome</h2>
        <div class="logo mx-auto mb-4">A</div>
        <form action="loginRequest" method="post">
            <div class="mb-3 input-group">
                <input type="email" id="email" name="email" class="form-control" required>
                <label for="email" class="form-label">Email</label>
            </div>
            <div class="mb-3 input-group position-relative">
                <input type="password" id="password" name="password" class="form-control" required>
                <label for="password" class="form-label">Password</label>

                </span>
            </div>
            <button type="submit" class="btn btn-primary w-100 gradient-btn">Login</button>
        </form>
        <br>
        <form action="signIn" >
            <p class="text-center mt-4 signup-text">Don't have an account?</p>
            <button type="submit" class="btn btn-primary w-100 gradient-btn">SignIn</button>
        </form>
    </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
