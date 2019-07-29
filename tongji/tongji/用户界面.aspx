<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="用户界面.aspx.cs" Inherits="tongji.用户界面" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  
    
    <link href="css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css" media="screen">
    <script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>
    <script type="text/javascript" src="js/google-maps.js"></script>
    <script>$(document).ready(function () { $(".vertical-nav").verticalnav({ speed: 400, align: "left" }); });</script>
   
    <meta name="robots" content="noindex,follow" />


    <style>
    #container {
        background-color:aquamarine;
        width: 1280px;
        height: 800px;
       
    }

    #div_left {
        float: left;
        width: 200px;
        height: 720px;
       background-color:#111213;
       
    }

    #div_right {
        float: right;
        height: 720px;
        width: 1080px;
        background-color: #313131;
    }

    #div_header {
        float: none;
        width: 100%;
        height: 85px;
       background-color:#252829;
    }

    #div_footer {
       
        float: left;
        width: 100%;
        height: 40px;
        background-color:#111213;
    }

    ul.menu {
        margin: 0px auto 0 auto;
    }
        .auto-style1 {
            left: 0px;
            top: 0px;
            width: 100%;
            height: 64px;
            
        }
        .auto-style2 {
            left: 0px;
            top: -1px;
        }
        .span{
           margin-left:360px;
          
          
        }
         .auto-style4 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #4CAF50; /*green*/;
            color: white;
            padding: 3px 7px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 12px;
            border-radius: 3px;
            -webkit-transition-duration: 0.4s; /* Safari */;
            transition-duration: 0.4s;
        }
        .auto-style4:hover{
    background-color :#e7e7e7;
    color: black;
}     
    </style>
    
   
   
</head>
<body>
    <form id="form1" runat="server">
    <div id="container">
        <div id="div_header">
            
                <span class="span" style="font-size: 60px; font-weight: bolder; font-family: 华文行楷; color: #629FEB">懒人统计系统&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:Button ID="tb_注销" runat="server" Font-Bold="True" Font-Names="仿宋" cssClass="auto-style4" Font-Size="Small" Height="30px" Text="注销" Width="80px" OnClick="tb_注销_Click" />
&nbsp;</span></div>
            <div id="div_main">
                <div id="div_left">
                    <!-- 左面菜单开始 -->
                    <div class="content">
                        <ul class="vertical-nav dark red" style="background-color: #111213">
                            <li style="background-color: #111213"><a href="user_account.aspx" target="kk"><i class="icon-group"></i>账号管理</a></li>
                            <li class="auto-style1" style="background-color: #111213"><a href="user_information.aspx" target="kk"><i class="icon-home"></i>信息管理</a></li>                                                 
                    </div>
                </div>
                <!-- 左面菜单结束 -->
                <div id="div_right">
                    <iframe src="" name="kk" frameborder="0" style="width: 100%; height: 100%" marginheight="0px" marginwidth="0px"></iframe>
                </div>
            </div>
            <div id="div_footer">footer</div>
        </div>
    </form>
</body>
</html>


