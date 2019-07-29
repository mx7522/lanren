using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace tongji
{
    public partial class search : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string Select_id = TextBox3.Text;
            string sql = string.Empty;
            if (DropDownList1.SelectedItem.Text == "")
            {
                sql = "select * from  t_user ";
                t_user.SelectCommand = sql;
            }
            //姓名和性别
            if (DropDownList1.SelectedItem.Text == "姓名")
            {
                sql = string.Format("select * from  t_user where name='{0}'", Select_id);
                t_user.SelectCommand = sql;
            }
            if (DropDownList1.SelectedItem.Text == "性别")
            {
                sql = string.Format("select * from  t_user where sex='{0}'", Select_id);
                t_user.SelectCommand = sql;
            }
            //出生年月和身份证号
            if (DropDownList1.SelectedItem.Text == "出生日期")
            {
                sql = string.Format("select * from  t_user where birth='{0}'", Select_id);
                t_user.SelectCommand = sql;
            }
            if (DropDownList1.SelectedItem.Text == "身份证号")
            {
                sql = string.Format("select * from  t_user where identify='{0}'", Select_id);
                t_user.SelectCommand = sql;
            }
            //籍贯和家庭住址
            if (DropDownList1.SelectedItem.Text == "籍贯")
            {
                sql = string.Format("select * from  t_user where place='{0}'", Select_id);
                t_user.SelectCommand = sql;
            }
            if (DropDownList1.SelectedItem.Text == "家庭住址")
            {
                sql = string.Format("select * from  t_user where address='{0}'", Select_id);
                t_user.SelectCommand = sql;
            }
            //学号和专业
            if (DropDownList1.SelectedItem.Text == "学号")
            {
                sql = string.Format("select * from  t_user where number='{0}'", Select_id);
                t_user.SelectCommand = sql;
            }
            if (DropDownList1.SelectedItem.Text == "专业")
            {
                sql = string.Format("select * from  t_user where majoy='{0}'", Select_id);
                t_user.SelectCommand = sql;
            }
            //单位和入伍时间
            if (DropDownList1.SelectedItem.Text == "单位")
            {
                sql = string.Format("select * from  t_user where unit='{0}'", Select_id);
                t_user.SelectCommand = sql;
            }
            if (DropDownList1.SelectedItem.Text == "入伍时间")
            {
                sql = string.Format("select * from  t_user where j_date='{0}'", Select_id);
                t_user.SelectCommand = sql;
            }
            //联系方式和账号
            if (DropDownList1.SelectedItem.Text == "联系方式")
            {
                sql = string.Format("select * from  t_user where phone='{0}'", Select_id);
                t_user.SelectCommand = sql;
            }
            if (DropDownList1.SelectedItem.Text == "账号")
            {
                sql = string.Format("select * from  t_user where account='{0}'", Select_id);
                t_user.SelectCommand = sql;
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}