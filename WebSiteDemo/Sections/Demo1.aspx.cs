using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CommonLibrary;
using DotNetOpenAuth.OpenId.Extensions.AttributeExchange;

namespace WebSiteDemo.Sections
{
    public partial class Demo1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Dictionary<string, NameManagement> names =
                ConfigurationManager.GetSection("SectionDemo") as Dictionary<string, NameManagement>;
            if (names != null)
            {
                foreach (var key in names.Keys)
                {
                    NameManagement name = names[key] as NameManagement;
                    Response.Write(name.ToString());
                    Response.Write("<br/>");
                }
            }
        }
    }
}