using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tongji
{
    public partial class 登录界面 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        #region 登陆
        protected void Button2_Click(object sender, EventArgs e)
        {
            String connstr = "server=.;database=account;Integrated Security=SSPI";
            SqlConnection conn = new SqlConnection(connstr);   //建立数据库连接对象  
            string str_account = TB_account1.Text.Trim();
            string str_password = this.TB_psw1.Text.Trim();
            string str_userid = DDL_userid1.SelectedValue;
            string cmdstr = string.Format("select user_id,password from t_account where account='{0}'", str_account);

            conn.Open();
            SqlCommand cmd = new SqlCommand(cmdstr, conn);

            SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            dr.Read();

            if (dr.HasRows)
            {
                string true_userid = dr.GetValue(0).ToString();
                string true_pwd = dr.GetValue(1).ToString();
                if (str_password == true_pwd && str_userid == true_userid)
                {
                    if (str_userid == "管理员") Response.Write("<script>alert('登陆成功!');location='管理员界面.aspx'</script>");
                    if (str_userid == "用户") Response.Write("<script>alert('登陆成功!');location='用户界面.aspx'</script>");
                }

                else
                {
                    Response.Write("<script>alert('密码不正确!');location='登录界面.aspx'</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('登陆失败，请检查账号是否输入正确！');location='登录界面.aspx'</script>");

            }
            dr.Close();
        }
        #endregion

        #region 注册
        protected void Bt_register_Click(object sender, EventArgs e)
        {

            String connstr = "server=.;database=account;Integrated Security=SSPI";
            SqlConnection conn = new SqlConnection(connstr);   //建立数据库连接对象  
            string cmdstr = string.Format("INSERT INTO t_account(user_id,account,password) VALUES ('{0}','{1}','{2}')", DDL_userid.SelectedValue ,TB_account.Text, TB_psw.Text);

            conn.Open(); SqlCommand cmd = new SqlCommand(cmdstr, conn);


            //打开数据库连接
            int x = cmd.ExecuteNonQuery(); //执行SQL语句并返回受影响的行数

            conn.Dispose();


        }
        #endregion
    }
}