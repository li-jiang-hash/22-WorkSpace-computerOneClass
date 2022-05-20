using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 二二年三月项目
{
    public partial class P119小七 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)//如果Session["admin"]不为空
            {
                if (String.IsNullOrEmpty(Session["admin"].ToString()))//则判断是否为空字符串
                {
                    Button1.Visible = true;//显示登录控件
                    Button2.Visible = false;//隐藏注销控件

                }
                else
                {
                    Button1.Visible = false;//隐藏登录控件
                    Label1.Text = "P119小七用户已登录";
                    Button2.Visible = true;//显示注销控件
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["admin"] = "admin";//新增Session对象
            Response.Redirect("P119小七.aspx");//页面跳转
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Clear();//删除所有Session对象
            Response.Redirect("P119小七.aspx");
        }
    }
}