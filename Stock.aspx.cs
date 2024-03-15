using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Stock : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (string.IsNullOrEmpty(Session["uname"].ToString()))
            {
                Response.Redirect("~/LoginPage.aspx");
            }           
        }
        BoundCategory();
        BoundProducts();
        GridViewDisplay();
    } 
    
    protected void BoundCategory()
    {
        if (ddlCategory.Items.Count < 2)
        {

            string strcmd = "SELECT        SportsId, SportName" +
                           " FROM Sports";
            DataTable dt = SqlHelper.getData(strcmd);
            ddlCategory.DataTextField = "SportName";
            ddlCategory.DataValueField = "SportsId";
            ddlCategory.DataSource = dt;
            ddlCategory.DataBind();
        }
    }  

    protected void BoundProducts()
    {
        ddlproducts.Items.Clear();
        ddlproducts.Items.Insert(0, "-Select Product-");
        if (ddlCategory.SelectedValue != "-1")
        {
            string strcmd = "SELECT        Equipments.EquipmetName, Equipments.EquipmentID " +
                            " FROM Equipments INNER JOIN "+
                             " Sports ON Equipments.SportsId = Sports.SportsId "+
                          " WHERE(Sports.SportsId ="+ ddlCategory.SelectedValue +")";
            DataTable dt = SqlHelper.getData(strcmd);
            ddlproducts.DataTextField = "EquipmetName";
            ddlproducts.DataValueField = "EquipmentID";
            ddlproducts.DataSource = dt;
            ddlproducts.DataBind();  
        }
    }

    protected void GridViewDisplay()
    {
        if (ddlCategory.SelectedValue != "-1")
        {
            string strcmd = "SELECT        Equipments.EquipmentID, Equipments.EquipmetName, Equipments.EquipmentPrice, Equipments.EquipmentQuantity " +
                      " FROM Equipments INNER JOIN " +
                       " Sports ON Equipments.SportsId = Sports.SportsId " +
                        " WHERE(Sports.SportsId =" + ddlCategory.SelectedValue + ")";

            DataTable dt = SqlHelper.getData(strcmd);
            DgvDisplay.DataSource = dt;
            DgvDisplay.DataBind();
        }
    }

    
}