using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace 二二年三月项目
{
    public partial class denglu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (Request.Cookies["userid"] != null)
                {
                    txtName.Text = Request.Cookies["userid"].Value;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            string strsql = "select * from UserMIS where UserID=@sn and PassWord=@pwd";
            SqlCommand cmdS = new SqlCommand(strsql, cn);
            cmdS.Parameters.AddWithValue("@sn", txtName.Text);
            cmdS.Parameters.AddWithValue("@pwd", txtPwd.Text);
            cn.Open();
            SqlDataReader dr = cmdS.ExecuteReader();
            if (dr.HasRows)
            {
                Session["UserID"] = txtName.Text;
                if (Request.QueryString["from"] == null)
                {
                    Response.Redirect("第一个.aspx");
                }
                else
                {
                    Response.Redirect(Request.QueryString["from"]);
                }
                if (CheckBox1.Checked == true)
                {
                    Response.Cookies["userid"].Value = txtName.Text;
                    Response.Cookies["userid"].Expires = DateTime.Now.AddDays(20);
                }
            }
            else
            {
                lblMessage.Text = "用户名或密码错误！";
            }
            dr.Close();
            cn.Close();
        }
    }
}