﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_hall.aspx.cs" Inherits="try2.Hall.add_hall" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
                color: #2f8483;
        }

        /* Full-width input fields */
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        .DropDownList {
         width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }


        /* Set a style for all buttons */
        button {
            background-color: #35d2d0;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            box-shadow: 0 0 10px 0px black;
        }

            button:hover {
                opacity: 0.8;
            }

        /* Extra styles for the cancel button */
        .cancelbtn {
            width: auto;
            padding: 10px 18px;
            box-shadow: 0 0 10px 0px black;
            background-color: #4a0d0d;
        }

        /* Center the image and position the close button */
        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
            position: relative;
        }

        img.avatar {
            width: 80%;
            border-radius: 5%;
        }

        .container {
            padding: 16px;
            position: relative;
        }

        span.psw {
            float: right;
            padding-top: 16px;
        }

        /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
            padding-top: 60px;
        }

        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
            border: 1px solid #888;
            width: 40%; /* Could be more or less, depending on screen size */
        }

        /* The Close Button (x) */
        .close {
            position: absolute;
            right: 25px;
            top: 0;
            color: #000;
            font-size: 35px;
            font-weight: bold;
        }

            .close:hover,
            .close:focus {
                color: red;
                cursor: pointer;
            }

        /* Add Zoom Animation */
        .animate {
            -webkit-animation: animatezoom 0.6s;
            animation: animatezoom 0.6s;
        }

        @-webkit-keyframes animatezoom {
            from {
                -webkit-transform: scale(0);
            }

            to {
                -webkit-transform: scale(1);
            }
        }

        @keyframes animatezoom {
            from {
                transform: scale(0);
            }

            to {
                transform: scale(1);
            }
        }

        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }

            .cancelbtn {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    
    <div>
         <button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Add New Hall</button>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <div id="id01" class="modal">

        <form class="modal-content animate" runat="server">
            <div class="container">
                <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Login Form">&times;</span>
                <h2  style="text-align:center;"><b>Add New Hall</b></h2>
            </div>
            <div class="imgcontainer">

                <img src="https://cdn.meetingsbooker.com/images/venues/Sheffield-City-Hall-2.jpg" alt="Hotel Pic" class="avatar"/>
            </div>

            <div class="container">
             
                <label for="Category"><b>Category</b></label>
                <br/> 
                   <asp:DropDownList ID="DropDownList1" CssClass="DropDownList" runat="server" required>
                <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                <asp:ListItem Text="Economy" Value="economy"></asp:ListItem>
                <asp:ListItem Text="Premium Suit" Value="premium"></asp:ListItem>
                <asp:ListItem Text="Royal Suit" Value="royal"></asp:ListItem>
                 
                </asp:DropDownList>
               <label for="uname"><b>Status</b></label>
      <input type="text" id="stat12" runat="server" value="available" placeholder="Available" name="uname" readonly/>


                  <label for="uname"><b>Discount</b></label>
                <input type="text" id="dis12" runat="server" placeholder="Discount in Rupees (if any)" name="uname" />
                <asp:Button ID="Button1" OnClick="add_halls" runat="server" Text="Add Hall" />
               
            </div>

            <div class="container" style="background-color:#f1f1f1">
                <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
              
            </div>
        </form>
    </div>
    </div>
   
    <script>
        // Get the modal
        var modal = document.getElementById('id01');

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function (event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>
</body>
</html>
