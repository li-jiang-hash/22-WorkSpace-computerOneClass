using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 二二年三月项目
{
    public partial class 找不同 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        static int[] ConArr = { 0, 0 };//初始化一个数字存储找到了几处不同之处
        protected void ImageMap1_Click(object sender, ImageMapEventArgs e)
        {
            switch (e.PostBackValue)
            {
                case "Dif1-a":
                    ConArr[0] = 1; //代表找到了一处
                    break;
                case "Dif1-b":
                    ConArr[0] = 1; //代表找到了一处
                    break;
                case "Dif2-a":
                    ConArr[1] = 1; //代表找到了一处
                    break;
                case "Dif2-b":
                    ConArr[1] = 1; //代表找到了一处
                    break;
                case "Dif3-a":
                    ImageMap1.ImageUrl = "image/kitty2.jpg";
                    break;
                case "Dif3-b":
                    ImageMap1.ImageUrl = "image/kitty1.jpg";
                    break;
            }
            int AllFind = 0;
            for(int i = 0; i < 2; i++)
            {
                AllFind += ConArr[i];
            }
            if (AllFind == 1)
            {
                Label1.Text = "找到了" + AllFind + "处不同";
            }
            else
            {
                Label1.Text = "找到了" + AllFind + "处不同!全部找到！";
            }
        }
    }
}