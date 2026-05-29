<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <style>
        *{
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family:'Poppins', sans-serif;
        }

        body{
            min-height:100vh;
            display:flex;
            justify-content:center;
            align-items:center;
            background:
                radial-gradient(circle at top left,#0f172a,#020617);
            padding:30px;
        }

        .container{
            width:100%;
            max-width:1100px;
            min-height:650px;
            display:flex;
            background:#fff;
            border-radius:18px;
            overflow:hidden;
            box-shadow:0 10px 40px rgba(0,0,0,0.4);
        }

        /* LEFT SIDE */
        .left{
            flex:1;
            background:
                linear-gradient(
                    135deg,
                    #03123f,
                    #041b4d,
                    #003b52
                );
            color:white;
            position:relative;
            display:flex;
            justify-content:center;
            align-items:center;
            padding:50px;
        }

        .left::before{
            content:"";
            position:absolute;
            width:350px;
            height:350px;
            border-radius:50%;
            background:rgba(0,255,255,0.08);
            filter:blur(10px);
        }

        .brand{
            position:relative;
            z-index:2;
            max-width:350px;
        }

        .brand h1{
            font-size:42px;
            margin-bottom:15px;
            font-weight:700;
        }

        .brand p{
            line-height:1.8;
            color:#dbeafe;
            font-size:15px;
        }

        /* RIGHT SIDE */
        .right{
            flex:1;
            display:flex;
            justify-content:center;
            align-items:center;
            padding:40px;
            background:#f8fafc;
        }

        .form-box{
            width:100%;
            max-width:420px;
            background:white;
            padding:40px;
            border-radius:16px;
            box-shadow:0 5px 25px rgba(0,0,0,0.08);
        }

        .form-box h2{
            margin-bottom:10px;
            color:#0f172a;
        }

        .form-box .sub{
            color:#64748b;
            font-size:14px;
            margin-bottom:30px;
        }

        .input-group{
            margin-bottom:18px;
        }

        .input-group label{
            display:block;
            margin-bottom:8px;
            font-size:14px;
            color:#334155;
            font-weight:500;
        }

        .input-group input{
            width:100%;
            padding:14px;
            border:none;
            border-radius:10px;
            background:#eef2ff;
            outline:none;
            transition:0.3s;
            font-size:14px;
        }

        .input-group input:focus{
            border:2px solid #0ea5e9;
            background:white;
        }

        .row{
            display:flex;
            gap:15px;
        }

        .row .input-group{
            flex:1;
        }

        .forgot{
            text-align:right;
            margin-top:-10px;
            margin-bottom:20px;
        }

        .forgot a{
            text-decoration:none;
            color:#0ea5e9;
            font-size:13px;
        }

        .btn{
            width:100%;
            padding:14px;
            border:none;
            border-radius:10px;
            background:linear-gradient(90deg,#0891b2,#0f172a);
            color:white;
            font-weight:600;
            cursor:pointer;
            transition:0.3s;
            font-size:15px;
        }

        .btn:hover{
            transform:translateY(-2px);
            opacity:0.95;
        }

        .bottom-text{
            text-align:center;
            margin-top:25px;
            font-size:14px;
            color:#64748b;
        }

        .bottom-text a{
            text-decoration:none;
            color:#0ea5e9;
            font-weight:600;
        }

        /* MOBILE */
        @media(max-width:900px){

            .container{
                flex-direction:column;
                max-width:450px;
            }

            .left{
                min-height:250px;
                text-align:center;
            }

            .brand h1{
                font-size:32px;
            }

            .row{
                flex-direction:column;
                gap:0;
            }
        }
    </style>
    </head>
    <body>
        <div class="container">

        <!-- LEFT -->
        <div class="left">
            <div class="brand">
                <h1>AutoWash Pro</h1>

                <p>
                    Industrial-grade automated hardware management.
                    Secure, systematic, and frictionless operations.
                </p>
            </div>
        </div>

        <!-- RIGHT -->
        <div class="right">

            <!-- LOGIN FORM -->
            <div class="form-box">

                <h2>Sign In</h2>

                <p class="sub">
                    Enter your credentials to access the dashboard.
                </p>

                <form action="LoginController" method="POST">

                    <div class="input-group">
                        <label>Phone Number</label>
                        <input type="text" name="phoneNumber" placeholder="(555) 000-0000">
                    </div>

                    <div class="input-group">
                        <label>Password</label>
                        <input type="password" name="password" placeholder="********">
                    </div>

                    <div class="forgot">
                        <a href="#">Forgot password?</a>
                    </div>

                    <button class="btn">
                        LOG IN
                    </button>

                </form>

                <div class="bottom-text">
                    New to AutoWash Pro?
                    <a href="register_web.jsp">Create account</a>
                </div>

            </div>

        </div>

    </div>
    </body>
</html>
