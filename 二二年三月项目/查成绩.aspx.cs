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
    public partial class 查成绩 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            String sqlStr = "With resultTable(姓名,课程,成绩) AS";
            sqlStr += "(SELECT s.StudentName,c.CourseName,r.Mark from Result r ";
            sqlStr += "INNER JOIN Course c ON r.CourseID=c.CourseID ";
            sqlStr += "INNER JOIN Student s ON r.StudentID=s.StudentID WHERE Major=@major)";
            sqlStr += "SELECT * FROM resultTable";

            string coursestr = "";
            for (int i = 0; i <= cblCourse.Items.Count - 1; i++)
            {
                if (cblCourse.Items[i].Selected)
                    coursestr += "[" + cblCourse.Items[i].Text + "],";
            }
            if (coursestr == "")
                lblMessage.Text = "请选择课程！";
            else
            {
                coursestr = coursestr.Substring(0, coursestr.Length - 1);
                sqlStr += " PIVOT(SUM(成绩) FOR 课程 IN (" + coursestr + ")) AS P";
                string connstr = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();//连接字符串
                SqlDataAdapter da = new SqlDataAdapter(sqlStr, connstr);
                da.SelectCommand.Parameters.AddWithValue("@major", ddlMajor.SelectedValue);//设置参数
                DataSet ds = new DataSet();
                da.Fill(ds);
                gvResult.DataSource = ds;//将Gridview绑定到dataset
                gvResult.DataBind();
                lblMessage.Text = "";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("首页.aspx");
        }
    }
}