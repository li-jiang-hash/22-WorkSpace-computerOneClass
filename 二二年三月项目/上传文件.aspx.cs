using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 二二年三月项目
{
    public partial class 上传文件 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["uname"] != null)
                {
                    Label1.Text = "用户名：" + Request.QueryString["uname"] + "；密码是：" + Request.QueryString["pwd"];
                }
            }   
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try //防止上传时出错，使用try-catch语句
            {
                string path = Server.MapPath(".");//设置服务器端的根目录，用于保存文件
                FileUpload1.PostedFile.SaveAs(path + FileUpload1.FileName);
                //调用控件的上传方法postfile中的saveas方法，将文件上传到指定路径
                Response.Write("上传成功！");
            }
            catch
            {
                Response.Write("上传失败！");
                //Response 响应查询
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            
        }
    }
}