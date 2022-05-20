using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace 二二年三月项目
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e) //点开程序就开始
        {
            Application["onlineNum"] = 0;//全局变量，名称要一致
        }

        protected void Session_Start(object sender, EventArgs e) //用户登录开始，退出结束
        {
            Application.Lock();
            Application["onlineNum"] = (int)Application["onlineNum"] + 1;//记录增加人数
            Application.UnLock();
            Session["starttime"] = DateTime.Now;//记录他进入时间
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Application.Lock();
            Application["onlineNum"] = (int)Application["onlineNum"] - 1;//记录减少人数
            Application.UnLock();
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}