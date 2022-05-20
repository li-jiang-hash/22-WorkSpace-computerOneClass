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
    public partial class 精确查询 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Request.QueryString["name"];
            if (!IsPostBack)
            {
                ddlMajor.DataBind();//填充列表项
                ddlMajor.Items.Insert(0, new ListItem("请选择专业：", ""));//添加首项
                ddlMajor.SelectedIndex = 0;//设置首项为默认选中项
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());//创建连接数据库
            //查什么 从哪查 传参数
            string Sql = "select * from Student where StudentID=@sid";//定义Sql语句：查询学号找到学生信息
            SqlCommand cmd = new SqlCommand(Sql, cn);//创建对象，定义对象
            cmd.Parameters.AddWithValue("@sid", txtID.Text);//为对象参数学号赋值（往里面输入参数学号）
            cn.Open();//打开数据库连接
            SqlDataReader dr = cmd.ExecuteReader();//执行数据库的读取操作，生成dr对象
            if (dr.HasRows)//是否为空/是否读到值
            {
                while (dr.Read())//读取一行记录
                {
                    lblTip.Text += "学号：" + dr.GetString(0) + "<br/><br/>";
                    lblTip.Text += "姓名：" + dr.GetString(1) + "<br/><br/>";
                    lblTip.Text += "性别：" + dr.GetString(2) + "<br/><br/>";
                    lblTip.Text += "出生日期：" + dr.GetDateTime(3) + "<br/><br/>";
                    lblTip.Text += "专业：" + dr.GetString(4) + "<br/><br/>";
                    lblTip.Text += "邮箱：" + dr.GetString(5) + "<br/><br/>";
                }
            }
            else
            {
                lblTip.Text = "该学号学生信息不存在！请重新输入！";
            }
            dr.Close();//关闭dr对象
            cn.Close();//关闭数据库连接
        }

        protected void gvStudent_DataBound(object sender, EventArgs e)
        {
            GridViewRow headerRow = gvStudent.HeaderRow;//获得标题行
            headerRow.Cells[0].Text = "学号";//设置列标题
            headerRow.Cells[1].Text = "姓名";
            headerRow.Cells[2].Text = "性别";
            headerRow.Cells[3].Text = "出生日期";
            headerRow.Cells[4].Text = "专业";
            headerRow.Cells[5].Text = "电子邮箱";
        }

        protected void ddlMajor_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlMajor.SelectedIndex != 0)
            {
                SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());//
                string sql = "select * from Student where Major=@mj";//定义Sql语句：查询专业找到学生信息
                SqlDataAdapter da = new SqlDataAdapter(sql, cn);// 
                da.SelectCommand.Parameters.AddWithValue("@mj", ddlMajor.SelectedValue);//为对象参数专业赋值
                DataSet ds = new DataSet();
                da.Fill(ds);
                gvStudent.DataSource = ds;
                gvStudent.DataBind();
                gvStudent.Visible = true;
            }
            else
            {
                gvStudent.Visible = false;
            }
        }


    }
}