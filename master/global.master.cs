using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class master_global : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string s=string.IsNullOrEmpty(Page.Title)?string.Empty:"_";
        Page.Title +=s+ "www.wanfolin.com";
    }
}
