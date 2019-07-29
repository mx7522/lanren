<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="登录界面.aspx.cs" Inherits="tongji.登录界面" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>翻转式用户登录注册界面设计</title>
	<link rel="stylesheet" type="text/css" href="css/styles.css">
	<!--[if IE]>
		<script src="http://libs.baidu.com/html5shiv/3.7/html5shiv.min.js"></script>
	<![endif]-->
    
</head>
<body>
    <form id="form1" runat="server">
        <div class="jq22-container" style="padding-top:100px">
		<div class="login-wrap">
			<div class="login-html">
				<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">登陆</label>
				<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">注册</label>

                

				<div class="login-form">
					<div class="sign-in-htm">
                        <div class="group">
							<asp:Label ID="Label6" class="label" runat="server" Text="用户身份"></asp:Label>
                        <%--<asp:TextBox ID="TB_userid" class="input" runat="server"></asp:TextBox>--%>

                            <asp:DropDownList ID="DDL_userid1" CssClass="input"  runat="server" ForeColor="Black">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>管理员</asp:ListItem>
                            <asp:ListItem>用户</asp:ListItem>               
                            </asp:DropDownList>
						</div>

						<div class="group">
							<asp:Label ID="Label7" class="label" runat="server" Text="账号"></asp:Label>
                        <asp:TextBox ID="TB_account1" class="input" runat="server"></asp:TextBox>
						</div>
						<div class="group">
							<asp:Label ID="Label8" class="label" runat="server" Text="密码"></asp:Label>
                        <asp:TextBox ID="TB_psw1"  MaxLength="10" class="input"  type="password" data-type="password" runat="server"></asp:TextBox>
						</div>
                       
						
						<div class="group">	
                            <asp:Button ID="Button1"  runat="server" class="button"  Text="登陆" OnClick="Button2_Click" />                          
						</div>

						<div class="hr"></div>
                        
					</div>

					<div class="sign-up-htm">
                        <div class="group">
							<asp:Label ID="Label1" class="label" runat="server"  Text="用户身份"></asp:Label>
                        <%--<asp:TextBox ID="TB_userid" class="input" runat="server"></asp:TextBox>--%>

                            <asp:DropDownList ID="DDL_userid" CssClass="input" runat="server" ForeColor="Black">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>管理员</asp:ListItem>
                            <asp:ListItem>用户</asp:ListItem>               
                            </asp:DropDownList>
						</div>
						<div class="group">
							<asp:Label ID="Label2" class="label" runat="server" Text="账号"></asp:Label>
                        <asp:TextBox ID="TB_account" ajax-message="用户名已存在!" class="input" runat="server"></asp:TextBox>
							
						</div>
						<div class="group">
							
                            <asp:Label ID="Label3" class="label" runat="server" Text="密码"></asp:Label>
                        <asp:TextBox ID="TB_psw" class="input" easyform="length:6-16;" message="密码必须为6—16位" easytip="disappear:lost-focus;" type="password" data-type="password" runat="server"></asp:TextBox>
						</div>

						<div class="group">
							
                             <asp:Button ID="Bt_register" runat="server" class="button" Text="注册" OnClick="Bt_register_Click" />
                            
						</div>
						<div class="hr"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
    </form>
</body>
</html>




