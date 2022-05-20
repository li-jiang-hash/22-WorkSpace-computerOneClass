using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 二二年三月项目
{
    public partial class 聊天室 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Trim() != "")
            {
                Session["nickname"] = TextBox1.Text;
                Response.Redirect("chatroom.html");
               
            }
            else
            {
                Response.Write("请输入昵称！");
            }
        }
    }
}