using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 二二年三月项目
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //protected void SendMessage(string words)
        //{
        //    Application["chatContent"] = Application["chatContent"] + words + "\n";
        //}
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            //SendMessage(txtWords.Text);
            //if (Application["chatContent"] != null)
            //{
            //   txtWords.Text = Application["chatContent"].ToString();
            //}
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            if (Application["chatContent"] != null)
            {
                TextBox1.Text = Application["chatContent"].ToString();
            }
        }
    }
}