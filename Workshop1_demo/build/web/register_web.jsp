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
            padding:30px;
            background:
                radial-gradient(circle at top left,#111827,#020617);
        }

        .container{
            width:100%;
            max-width:1150px;
            min-height:700px;
            display:flex;
            border-radius:20px;
            overflow:hidden;
            background:white;
            box-shadow:0 10px 40px rgba(0,0,0,0.4);
        }

        /* LEFT PANEL */

        .left{
            flex:1;
            background:
                linear-gradient(
                    135deg,
                    #082f49,
                    #0f172a,
                    #172554
                );
            color:white;
            display:flex;
            justify-content:center;
            align-items:center;
            padding:60px;
            position:relative;
        }

        .left::before{
            content:"";
            position:absolute;
            width:350px;
            height:350px;
            border-radius:50%;
            background:rgba(0,255,255,0.07);
            filter:blur(20px);
        }

        .content{
            position:relative;
            z-index:2;
            max-width:380px;
        }

        .content h1{
            font-size:48px;
            margin-bottom:20px;
            font-weight:700;
        }

        .content p{
            line-height:1.8;
            color:#dbeafe;
            font-size:15px;
        }

        /* RIGHT PANEL */

        .right{
            flex:1;
            background:#f8fafc;
            display:flex;
            justify-content:center;
            align-items:center;
            padding:40px;
        }

        .form-box{
            width:100%;
            max-width:450px;
            background:white;
            padding:40px;
            border-radius:18px;
            box-shadow:0 5px 25px rgba(0,0,0,0.08);
        }

        .form-box h2{
            color:#0f172a;
            margin-bottom:10px;
        }

        .sub-title{
            color:#64748b;
            font-size:14px;
            margin-bottom:30px;
        }
        select{
            width:100%;
            padding:14px;
            border:none;
            outline:none;
            border-radius:10px;
            background:#eef2ff;
            transition:0.3s;
            font-size:14px;
        }

        .row{
            display:flex;
            gap:15px;
        }

        .input-group{
            margin-bottom:18px;
            width:100%;
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
            outline:none;
            border-radius:10px;
            background:#eef2ff;
            transition:0.3s;
            font-size:14px;
        }

        .input-group input:focus{
            border:2px solid #06b6d4;
            background:white;
        }

        .checkbox{
            display:flex;
            align-items:flex-start;
            gap:10px;
            margin:10px 0 25px;
            font-size:13px;
            color:#475569;
        }

        .checkbox input{
            margin-top:3px;
        }

        .checkbox a{
            text-decoration:none;
            color:#0ea5e9;
            font-weight:500;
        }

        .btn{
            width:100%;
            padding:15px;
            border:none;
            border-radius:10px;
            background:
                linear-gradient(
                    90deg,
                    #0f172a,
                    #164e63
                );
            color:white;
            font-size:15px;
            font-weight:600;
            cursor:pointer;
            transition:0.3s;
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
            color:#06b6d4;
            font-weight:600;
        }

        /* MOBILE */

        @media(max-width:900px){

            .container{
                flex-direction:column;
                max-width:500px;
            }

            .left{
                min-height:250px;
                text-align:center;
            }

            .content h1{
                font-size:36px;
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

        <!-- LEFT SIDE -->

        <div class="left">

            <div class="content">

                <h1>Join AutoWash Pro</h1>

                <p>
                    Create an account to manage your fleet,
                    track wash histories, and optimize your
                    facility's operational efficiency.
                </p>

            </div>

        </div>

        <!-- RIGHT SIDE -->

        <div class="right">

            <div class="form-box">

                <h2>Create Account</h2>
                <h3 style="color:red">
                    ${requestScope.ERROR}
                </h3>

                <p class="sub-title">
                    Enter your details to get started.
                </p>

                <form action="RegisterController" method="POST">

                    <div class="row">

                        <div class="input-group">
                            <label>Full Name</label>
                            <input type="text" name="fullName" placeholder="John Doe">
                        </div>

                        <div class="input-group">
                            <label>Password</label>
                            <input type="password" name="password" placeholder="********">
                        </div>

                    </div>

                    <div class="row">

                        <div class="input-group">
                            <label>Email</label>
                            <input type="text" name="email" placeholder="abc@gmail.com">
                        </div>
                        <div class="input-group">
                            <label>Phone Number</label>
                            <input type="text" name="phoneNumber" placeholder="0912345678">
                        </div>
                        
                    </div>
                    <div class="row">
                        <div class="input-group">
                            <label>Address</label>
                            <input type="text" name="address" placeholder="123 Street...">
                    </div>
                        <div class="input-group">
                            <label>Confirm Password</label>
                            <input type="password" placeholder="********">
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="input-group">
                            <label>License Plate</label>
                            <input type="text" name="licensePlate" placeholder="51A-12345">
                        </div>
                        <div class="input-group">
                            <label>Brand</label>
                            <select name="brand">
                                <option value="Toyota">Toyota</option>
                                <option value="Honda">Honda</option>
                                <option value="Kia">Kia</option>
                                <option value="Hyundai">Hyundai</option>
                                <option value="Ford">Ford</option>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-group">
                            <label>Model</label>
                            <input type="text" name="model" placeholder="Vios / Civic / CX5">
                        </div>
                        <div class="input-group">
                            <label>Color</label>
                            <input type="text" name="color" placeholder="White/Black">
                        </div>
                    </div>

                    <div class="checkbox">

                        <input type="checkbox">

                        <span>
                            I agree to the
                            <a href="#">Terms of Service</a>
                            and
                            <a href="#">Privacy Policy</a>
                        </span>

                    </div>

                    <button class="btn">
                        REGISTER NOW
                    </button>

                </form>

                <div class="bottom-text">
                    Already have an account?
                    <a href="login_web.jsp">Log In</a>
                </div>

            </div>

        </div>

    </div>
    </body>
</html>
