using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 二二年三月项目
{
    public partial class 信息录入 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Label7.Text = Request.QueryString["name"];
        }

        protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                LinkButton lnkdel = (LinkButton)e.Row.Cells[0].Controls[2];
                if (lnkdel.Text == "删除")
                {
                    lnkdel.Attributes["onclick"] = "return confirm('确定要删除这条记录吗？')";
                }
            }
        }

        protected void SqlResult_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}