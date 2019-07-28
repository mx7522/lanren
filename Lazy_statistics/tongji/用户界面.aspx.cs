using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tongji
{
    public partial class 用户界面 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void tb_注销_Click(object sender, EventArgs e)
        {
            Response.Write("<script>location='登录界面.aspx'</script>");
        }
    }
}