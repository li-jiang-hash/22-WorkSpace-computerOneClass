using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace 二二年三月项目
{
    public partial class 主题样式 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["theme"] != null)
                {
                    DropDownList2.SelectedValue = Session["theme"].ToString();
                }
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["theme"] = DropDownList2.SelectedValue;
            Response.Redirect(Request.Path.ToString());
        }
        protected void Page_PreInit(object sender,EventArgs e)
        {
            if (Session["theme"] != null)
            {
                Page.Theme = Session["theme"].ToString();
            }
        }
    }
}