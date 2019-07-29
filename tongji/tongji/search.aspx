<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="tongji.search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <style type="text/css">
        .div{
            color:white;
           margin:20px;
        }
       
         .auto-style3{
            margin-left: 8px;
             margin-right: 6px;
         }
         .button {
   background-color: #4CAF50; /*green*/
    border: none;
    color: white;
    padding: 3px 7px;
    text-align:center;
    text-decoration: none;
    display: inline-block;
    font-size: 14px;
    border-radius: 3px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    width:44px;
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
    font-size: 14px;
    border-radius: 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    width:44px;
    height:24px;
    

}
   .button1:hover {
    background-color :#e7e7e7;
    color: black;
}     
   .button2{
    background-color: #008CBA; /* blue*/
    border: none;
    color: white;
    padding: 3px 7px;
    text-align:center;
    text-decoration: none;
    display: inline-block;
    font-size: 12px;
    border-radius: 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    width:44px;
    height:24px;
    

}
   .button2:hover {
    background-color :#e7e7e7;
    color: black;
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
       .box1,.box2 {border:1px solid #36d8fc;}
.box2 { border:1px solid #36d8fc;}

         .auto-style5 {
             color: white;
             margin: 20px;
             width: 1487px;
         }

    </style>
</head>
<body>

    <form id="form1" runat="server" aria-orientation="horizontal" submitdisabledcontrols="True">
    <div class="auto-style5">
    
            <asp:DropDownList ID="DropDownList1" runat="server" Height="26px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>姓名</asp:ListItem>
            <asp:ListItem>性别</asp:ListItem>
            <asp:ListItem>出生日期</asp:ListItem>
            <asp:ListItem>身份证号</asp:ListItem>
            <asp:ListItem>籍贯</asp:ListItem>
            <asp:ListItem>家庭住址</asp:ListItem>
            <asp:ListItem>学号</asp:ListItem>
            <asp:ListItem>专业</asp:ListItem>
            <asp:ListItem>单位</asp:ListItem>
            <asp:ListItem>入伍时间</asp:ListItem>
            <asp:ListItem>联系方式</asp:ListItem>
            <asp:ListItem>账号</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="TextBox3" runat="server" Height="22px" ></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" cssClass="auto-style4" Text="查询"  Height="26px" Width="56px" Font-Size="Small"/>
    
        <br />
        <br />
        
    
        <asp:GridView ID="GridView1" class="div" runat="server" AutoGenerateColumns="False" DataSourceID="t_user"  OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="auto-style3" HorizontalAlign="Left" Font-Bold="True"  ForeColor="#333333" AllowPaging="True" PageSize="6" BackColor="#00CC00" Width="1350px">
        <Columns>
                <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="姓名" />
                <asp:BoundField DataField="sex" HeaderText="性别" SortExpression="性别" />
                <asp:BoundField DataField="birth" HeaderText="出生日期" SortExpression="出生日期" DataFormatString="{0:d}" />
                <asp:BoundField DataField="identify" HeaderText="身份证号" SortExpression="身份证号" />
                <asp:BoundField DataField="place" HeaderText="籍贯" SortExpression="籍贯" />
                <asp:BoundField DataField="address" HeaderText="家庭住址" SortExpression="家庭住址" />
                <asp:BoundField DataField="number" HeaderText="学号" SortExpression="学号" />
                <asp:BoundField DataField="majoy" HeaderText="专业" SortExpression="专业" />
                <asp:BoundField DataField="unit" HeaderText="单位" SortExpression="单位" />
                <asp:BoundField DataField="j_date" HeaderText="入伍时间" SortExpression="入伍时间" DataFormatString="{0:d}" />
                <asp:BoundField DataField="phone" HeaderText="联系方式" SortExpression="联系方式" />
                <asp:BoundField DataField="account" HeaderText="账号" SortExpression="账号" />
                <asp:CommandField ButtonType="Button"  HeaderText="更新" ShowEditButton="True" >
                <ControlStyle CssClass="button"/>
                </asp:CommandField>
                <asp:CommandField ButtonType="Button" HeaderText="删除" ShowDeleteButton="True"  >
                <ControlStyle CssClass="button1"/>
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
        
    
    </div>
         <asp:SqlDataSource ID="t_user" runat="server" ConnectionString="<%$ ConnectionStrings:accountConnectionString1 %>" SelectCommand="SELECT * FROM [t_user]" DeleteCommand="DELETE FROM [t_user] WHERE  [account] = @original_account " InsertCommand="INSERT INTO [t_user] (*) VALUES (@name,@sex, @birth,@identify, @place,@address, @number,@majoy, @uint,@j_date, @phone,@account)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [t_user] SET [address] =@original_address,[number] = @original_number WHERE [account] = @original_account">
           
            <DeleteParameters>
                <asp:Parameter Name="original_account" Type="String" />                                       
            </DeleteParameters>
            <InsertParameters >
                <asp:Parameter Name="name" Type="String" />   
                <asp:Parameter Name="sex" Type="String" />
                <asp:Parameter Name="birth" Type="String" />  
                <asp:Parameter Name="identify" Type="String" />   
                <asp:Parameter Name="place" Type="String" />
                <asp:Parameter Name="address" Type="String" />   
                <asp:Parameter Name="number" Type="String" />   
                <asp:Parameter Name="majoy" Type="String" />
                <asp:Parameter Name="unit" Type="String" />
                <asp:Parameter Name="j_date" Type="String" />  
                <asp:Parameter Name="phone" Type="String" />   
                <asp:Parameter Name="account" Type="String" />             
            </InsertParameters>
            <UpdateParameters>                
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="sex" Type="String" />
                <asp:Parameter Name="birth" Type="String" />
                <asp:Parameter Name="identify" Type="String" />  
                <asp:Parameter Name="place" Type="String" />
                <asp:Parameter Name="address" Type="String" />  
                <asp:Parameter Name="number" Type="String" />
                <asp:Parameter Name="majoy" Type="String" />  
                <asp:Parameter Name="unit" Type="String" />
                <asp:Parameter Name="j_date" Type="String" />  
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="account" Type="String" />  
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_sex" Type="String" />
                <asp:Parameter Name="original_birth" Type="String" />
                <asp:Parameter Name="original_identify" Type="String" />  
                <asp:Parameter Name="original_place" Type="String" />
                <asp:Parameter Name="original_address" Type="String" />  
                <asp:Parameter Name="original_number" Type="String" />
                <asp:Parameter Name="original_majoy" Type="String" />  
                <asp:Parameter Name="original_unit" Type="String" />
                <asp:Parameter Name="original_j_date" Type="String" />  
                <asp:Parameter Name="original_phone" Type="String" />
                <asp:Parameter Name="original_account" Type="String" /> 
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
