<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Stock.aspx.cs" Inherits="Stock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />

    <!-- OnClientClick="return confirm('Are you sure you want add this sport?');" (works according to messagebox) -->
    <!-- Optional: Add Bootstrap JavaScript and Popper.js if needed -->
    <script src="Scripts/jquery-3.7.1.min.js"></script>
    <script src="Scripts/jquery-3.7.1.slim.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="card" style="margin-top: 30px; justify-content: center">
        <div class="card-header display-6" style="font-size: 30px">
            Stock Manager
        </div>
        <div class="card-body text-center" style="font-size: 25px">
            <div class="dropdown">
                <asp:label runat="server" text="Select Sport : "></asp:label>
                <asp:dropdownlist runat="server" cssclass="btn btn-secondary dropdown-toggle" id="ddlCategory" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" appenddatabounditems="True" autopostback="True">
                    <asp:ListItem Value="-1">-Select Sport-</asp:ListItem>
                 </asp:dropdownlist>
                <asp:label runat="server" cssclass="ml-2" text="Select Equipment : "></asp:label>
                <asp:dropdownlist runat="server" cssclass="btn btn-secondary dropdown-toggle" id="ddlproducts" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" appenddatabounditems="True">
                    <asp:ListItem Value="-1">-Select Equipment-</asp:ListItem>
                </asp:dropdownlist>
                <asp:label runat="server" cssclass="ml-2" text="Enter In-Quantity : " ID="label2"></asp:label>
                <asp:TextBox ID="txtinqty" runat="server" TextMode="Number"></asp:TextBox>
                <asp:Button ID="btnSave" runat="server" Text="Insert" cssclass="btn btn-primary ml-5" />
            </div>
        </div>
    </div>

    <div class="card">
        <h5 class="card-header display-6" style="font-size: 25px">Featured</h5>
        <div class="card-body" style="align-content:center; margin-left:400px">
            <asp:GridView ID="DgvDisplay" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Height="195px" Width="509px">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
        </div>
    </div>
</asp:Content>

