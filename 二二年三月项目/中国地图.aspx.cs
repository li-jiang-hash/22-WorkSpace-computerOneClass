using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 二二年三月项目
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageMap1_Click(object sender, ImageMapEventArgs e)
        {
            string region = "";
            switch (e.PostBackValue)
            {
                case "XJ":
                    region = "新疆";
                    ImageMap1.ImageUrl = "image/xj.jpg";
                    break;
                case "HLJ":
                    region = "黑龙江";
                    ImageMap1.ImageUrl = "image/hlj.jpg";
                    break;
                case "FJ":
                    region = "福建";
                    ImageMap1.ImageUrl = "image/fj.jpg";
                    break;
                case "XZ":
                    region = "西藏";
                    ImageMap1.ImageUrl = "image/xz.jpg";
                    break;  
            }
            Label1.Text = region;
        }
    }
}