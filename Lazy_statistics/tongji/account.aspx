<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="account.aspx.cs" Inherits="tongji.user_account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 163px;
        }
                
        .div{
            color:white;
           margin-top:20px;
           margin-left:200px;
        }
        .div1{
            color:white;
           margin-top:20px;
           margin-left:250px;
        }
         .auto-style33{
            margin-left: 0px;
            margin-top: 0px;
        }
         .button {
    background-color: #4CAF50; /*green*/
    border: none;
    color: white;
    padding: 3px 7px;
    text-align:center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    border-radius: 3px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    width:45px;
    height:24px;

}
   .button:hover {
    background-color :#e7e7e7;
    color: black;
}     
    .button1{
    background-color: #f44336; /* red*/
    border: none;
    color: white;
    padding: 3px 7px;
    text-align:center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    border-radius: 3px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    width:45px;
    height:24px;
    

}
   .button1:hover {
    background-color :#e7e7e7;
    color: black;
}     
   .button2{
        border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #008CBA; /* blue*/
            color: white;
            padding: 3px 7px;
            text-align:center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-radius: 3px;
            -webkit-transition-duration: 0.4s; /* Safari */
            transition-duration: 0.4s;
        }
   .button2:hover {
    background-color :#e7e7e7;
    color: black;
}     

        .auto-style44 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #4CAF50; /*green*/;
            color: white;
            padding: 3px 7px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-radius: 3px;
            -webkit-transition-duration: 0.4s; /* Safari */;
            transition-duration: 0.4s;
            margin-left: 0px;
        }
       .box1,.box2 {border:1px solid #36d8fc;}
.box2 { border:1px solid #36d8fc;}

        .auto-style45 {
            width: 500px;
        }
        .auto-style46 {
            width: 500px;
            height: 40px;
        }

        .auto-style3 {
            width: 500px;
            height: 40px;
        }     
        
        .auto-style47 {
            margin-left: 0px;
        }
        
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="div1">
    
        <table class="auto-style1" style="color: #FFFFFF; font-weight: bold;">
            <tr>                
                <td class="auto-style46">
                    用户身份&nbsp;&nbsp&nbsp;<asp:DropDownList ID="user_id" runat="server" Height="36px" Width="304px" CssClass="auto-style47">
                        <asp:ListItem>管理员</asp:ListItem>
                        <asp:ListItem>用户</asp:ListItem>                      
                    </asp:DropDownList>
                    </td>
            </tr>
            <tr>
                <td class="auto-style45">&nbsp;&nbsp&nbsp&nbsp;账号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;<asp:TextBox ID="account" runat="server" Width="300px" Height="32px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style46">&nbsp;&nbsp&nbsp&nbsp;密码&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;<asp:TextBox ID="password" runat="server" Width="300px" Height="32px"></asp:TextBox>
                </td>
            </tr>
                        
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;
                 <asp:Button ID="add" runat="server" Text="添加用户" cssClass="auto-style44" OnClick="add_Click" Width="120px" Height="40px" Font-Bold="True" Font-Italic="False" Font-Size="Medium" ForeColor="Black"/>
                 <asp:Button ID="reset" runat="server" cssClass="button2"  OnClick="reset_Click" Text="重置" Font-Bold="True" Font-Size="Medium" ForeColor="Black" Height="40px" Width="120px"  />
                </td>
            </tr>
                        
            <tr>
                <td class="auto-style45">
                    &nbsp;
                    &nbsp;
                    &nbsp;
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="account" DataSourceID="SqlDataSource1" CssClass="auto-style33" HorizontalAlign="Center" ForeColor="#333333" Font-Bold="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Width="612px">
                        <Columns>
                            <asp:BoundField DataField="user_id" HeaderText="用户身份" SortExpression="user_id" />
                            <asp:BoundField DataField="account" HeaderText="账号" ReadOnly="True" SortExpression="account" />
                            <asp:BoundField DataField="password" HeaderText="密码" SortExpression="password" />
                            <asp:CommandField ButtonType="Button" HeaderText="操作1" ShowEditButton="True" >
                            <ControlStyle CssClass="button"/>
                            </asp:CommandField>
                            <asp:CommandField ButtonType="Button" HeaderText="操作2" ShowDeleteButton="True" >
                            <ControlStyle CssClass="button1" />
                            </asp:CommandField>
                        </Columns>
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                 
                    </td>
            </tr>
            </table>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:accountConnectionString %>" DeleteCommand="DELETE FROM [t_account] WHERE  [user_id] = @original_user_id AND [account] = @original_account AND [password] = @original_password " InsertCommand="INSERT INTO [t_account] ([user_id],[account], [password]) VALUES (@user_id,@account, @password)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [t_account]" UpdateCommand="UPDATE [t_account] SET  [account] = @original_account,[password] = @password WHERE [user_id] = @original_user_id AND [account] = @original_account AND [password] = @original_password ">
           
        <DeleteParameters>
                <asp:Parameter Name="original_user_id" Type="String" />   
                <asp:Parameter Name="original_account" Type="String" />
                <asp:Parameter Name="original_password" Type="String" />                           
            </DeleteParameters>
            <InsertParameters >
                <asp:Parameter Name="user_id" Type="String" />   
                <asp:Parameter Name="account" Type="String" />
                <asp:Parameter Name="password" Type="String" />                       
            </InsertParameters>
            <UpdateParameters>                
                <asp:Parameter Name="user_id" Type="String" />
                <asp:Parameter Name="account" Type="String" />    
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="original_user_id" Type="String" /> 
                <asp:Parameter Name="original_account" Type="String" />
                <asp:Parameter Name="original_password" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </form>
</body>
</html>
