using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 二二年三月项目
{
    public partial class 第一个 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         //   if (IsPostBack)
         //   {
         //       string tetName = Request["tetName"].ToString();
         //       Response.Write( tetName + "欢迎你的到来");
         //   }
        }

        protected void ButOK_Click(object sender, EventArgs e)
        {
            string s_url;
            s_url = "信息录入.aspx?name=" +"欢迎"+ tetName.Text+"来到信息录入管理页面！！！";
            Response.Redirect(s_url);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s_url;
            s_url = "精确查询.aspx?name=" + "欢迎" + TextBox1.Text + "来到精确查询页面！！！";
            Response.Redirect(s_url);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text.Trim() != "")
            {
                Session["nickname"] = TextBox2.Text;
                Response.Redirect("chatroom.html");

            }
            else
            {
                Response.Write("请输入昵称！");
            }
        }
    }
}