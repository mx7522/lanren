using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tongji
{
    public partial class user_account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void add_Click(object sender, EventArgs e)
        {
            string connstr = "server=.;database=account;Integrated Security=SSPI";
            SqlConnection conn = new SqlConnection(connstr);
            conn.Open();
            if (account.Text.Trim() == "" || password.Text.Trim() == "" )
            {
                Response.Write("<script>alert('信息不能为空！')</script>");
                return;
            }
            else
            {
                string cmdText = "insert into t_account values('" + user_id.SelectedItem.Text + "','" + account.Text + "','" + password.Text + "')";
                SqlCommand cmd = new SqlCommand(cmdText, conn);
                cmd.ExecuteNonQuery();
                GridView1.DataBind();
                Response.Write("<script>alert('已添加！')</script>");
                conn.Close();
                this.account.Text = "";
                this.password.Text = "";                      
            }

        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void reset_Click(object sender, EventArgs e)
        {
            this.account.Text = "";
            this.password.Text = "";
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}