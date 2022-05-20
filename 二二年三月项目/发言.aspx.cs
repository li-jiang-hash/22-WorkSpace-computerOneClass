using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 二二年三月项目
{
    public partial class 发言 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SendMessage(string words)
        {
            words = Session["nickname"].ToString() + ":" + words;
            Application["chatContent"] = Application["chatContent"] + words + "\n";
            //发送聊天信息方法，将字符存入application
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SendMessage(TextBox1.Text);
            //发送信息
        }
    }
}