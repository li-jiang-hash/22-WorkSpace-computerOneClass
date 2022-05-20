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
    public partial class 数注册 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
     
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            string sqlSearch = "select * from UserMIS where UserID=@un";//查询
            SqlCommand cmds = new SqlCommand(sqlSearch, cn);
            cmds.Parameters.AddWithValue("@un", txtName.Text);
            cn.Open();
            SqlDataReader dr = cmds.ExecuteReader();
            if (dr.HasRows)
            {
                Label1.Text = "此用户已存在";
                dr.Close();
            }
            else
            {
                dr.Close();
                string sqlinsert = "insert into UserMIS(UserID,PassWord) values(@un,@pwd)";//添加
                SqlCommand cmdIn = new SqlCommand(sqlinsert, cn);
                cmdIn.Parameters.AddWithValue("@un", txtName.Text );
                cmdIn.Parameters.AddWithValue("@pwd", txtPwd1.Text );
                cmdIn.ExecuteNonQuery();//读取本行
                 Response.Redirect("数登录.aspx");//直接跳转
            }
            
            cn.Close();
        }

       
    }
}