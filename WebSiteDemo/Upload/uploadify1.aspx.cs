using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSiteDemo.Demo
{
    public partial class uploadify1 : System.Web.UI.Page
    {
        protected string subpathName = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            subpathName = Guid.NewGuid().ToString();
        }
    }
}