using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AccountDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(Session["uname"].ToString()))
        {
            Response.Redirect("~/LoginPage.aspx");
        }
        else
        {
            if (Session["uname"].ToString() != "Manager1")
            {
                Response.Redirect("~/LoginPage.aspx");
            }
        }
    }
}