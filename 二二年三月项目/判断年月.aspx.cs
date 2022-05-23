using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 二二年三月项目
{
   
    public partial class 判断年月 : System.Web.UI.Page
    {
        //判断该年是否闰年的静态方法
        public static bool IsLeap(int year)
        {
            if ((year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0))
                return true;
            else
                return false;
        }
        //判断该月属于哪个季节的静态方法
        public static string Season(int month)
        {
            switch (month)
            {
                case 12:
                case 1:
                case 2:
                    return "冬季";//注意：函数返回，不需要再执行break，下同。
                case 3:
                case 4:
                case 5:
                    return "春季";
                case 6:
                case 7:
                case 8:
                    return "夏季";
                case 9:
                case 10:
                case 11:
                    return "秋季";
                default:
                    return "错误";
            }
        }
        //判断该年该月有多少天的静态方法
        public static int DaysOfMonth(int year,int month)
        {
            switch (month)
            {
                case 1:
                case 3:
                case 5:
                case 7:
                case 8:
                case 10:
                case 12:
                    return 31;
                case 4:
                case 6:
                case 9:
                case 11:
                    return 30;
                case 2:
                    if (IsLeap(year))//如果闰年，2月29天，否则2月28天。
                        return 29;
                    else
                        return 28;
                default:
                    return -1;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //给定年份和月份
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
            {
                int year =int.Parse (TextBox1.Text );       
                int month = int.Parse(TextBox2.Text);
                if (IsLeap(year)) //判断闰年
                    lblOutput.Text = year + "年是闰年。";
                else
                    lblOutput.Text = year + "年不是闰年。";
                lblOutput.Text += "<br/>" + month + "月份属于" + Season(month) + "。";//判断季节
                lblOutput.Text += "<br/>" + year + "年" + month + "月" + DaysOfMonth(year, month) + "天。";//判断天数
           
        }
    }
}