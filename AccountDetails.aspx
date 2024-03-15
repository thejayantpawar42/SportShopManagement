<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AccountDetails.aspx.cs" Inherits="AccountDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">


    <head>
        <style>
            .setup {
                text-align: center;
            }

            .textbox {
                width: 200px;
                padding: 10px;
                border: 1px solid #ccc;
                transition: border-color 0.3s ease;
            }

                /* Hover effect when the user hovers over the textbox */
                .textbox:hover {
                    border-color: #999;
                }

                /* Hover effect when the user selects the textbox */
                .textbox:focus {
                    border-color: cyan;
                }
        </style>
    </head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="card" style="margin-top: 40px">
        <h5 class="card-header">Account Handler</h5>
        <div class="card-body">
            <asp:Label ID="Label2" runat="server" Text="Enter UserName : "></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control textbox"></asp:TextBox>

            <asp:Label ID="Label3" runat="server" Text="Enter Password : "></asp:Label>

            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control textbox"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <asp:Button ID="Button1" runat="server" Text="Add User" CssClass="btn btn-primary" />

        </div>
    </div>

    <div>
        <div class="card text-dark bg-light mb-3" style="margin-top: 70px; align-items: center;">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ManagerID" DataSourceID="SqlDataSource2" Width="964px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ManagerID" HeaderText="ManagerID" InsertVisible="False" ReadOnly="True" SortExpression="ManagerID">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ASPDemoConnectionString %>" SelectCommand="SELECT [ManagerID], [UserName] FROM [DbManagers]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ASPDemoConnectionString %>" SelectCommand="SELECT [ManagerId], [UserName], [Password] FROM [DbManagers]"></asp:SqlDataSource>
        </div>


    </div>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

</asp:Content>

