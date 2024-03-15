using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoginPage : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    DataTable data = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(string.IsNullOrEmpty(TextBox1.Text)|| string.IsNullOrEmpty(TextBox2.Text))
        {
            Label1.Text = "Username or Password can't be EMPTY";
        }
        else
        {
            Label1.Text = "";
            getConnection();
            
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                if((TextBox1.Text == GridView1.Rows[i].Cells[0].Text) && (TextBox2.Text == GridView1.Rows[i].Cells[1].Text))
                { 
                    getName();
                    Label1.Text = "";
                    
                    Session["uname"] = data.Rows[0]["UserName"].ToString();
                    string name = Session["uname"] as string;
                    Label1.Text = name;
                    Response.Redirect("~/Simple.aspx"); 
                }
                else
                {
                    Label1.Text = "Username or Password is Incorrect";
                    TextBox1.Focus();
                }
            }
            
        }

    }

    public void getConnection()
    {
        string strcmd = "select UserName,Password from DbManagers";
        DataTable dt = SqlHelper.getData(strcmd);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void getName()
    {
        string strcmd="select UserName,Password from DbManagers where UserName='"+TextBox1.Text+"'";
        data = SqlHelper.getData(strcmd);
    }
}