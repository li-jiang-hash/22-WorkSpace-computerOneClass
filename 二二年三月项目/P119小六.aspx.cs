using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 二二年三月项目
{
    public partial class P119小六 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int counts;//定义一个访问次数变量
            if (Request.Cookies["counts"] == null)
            {
                counts = 1;
            }
            else
            {
                //如果不是第一次访问，就令访问次数在原有次数上加一
                counts = int.Parse(Request.Cookies["counts"].Value) + 1;
            }
            //将新的访问次数保存到Cookie中
            Response.Cookies["counts"].Value = counts.ToString();
            //设置有效期为三年后
            Response.Cookies["counts"].Expires = DateTime.Now.AddYears(3);
            Label1.Text = "你是第" + counts + "次访问本站";
        }
    }
}