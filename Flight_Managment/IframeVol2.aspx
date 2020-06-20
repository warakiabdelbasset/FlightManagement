<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IframeVol2.aspx.cs" Inherits="Flight_Managment.IframeVol2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <title></title>
    <link href="gridview.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script>
        function addnew() {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Please complete the form',
            })
        }
        function good() {
            Swal.fire({
                position: 'center',
                icon: 'success',
                title: 'New Record Added',
                showConfirmButton: false,
                timer: 1500
            })
        }
        function verif() {
            Swal.fire({
                position: 'center',
                icon: 'success',
                title: 'Row has been deleded',
                showConfirmButton: false,
                timer: 1500
            })
        }
        function upda() {
            Swal.fire({
                position: 'center',
                icon: 'success',
                title: 'Row has been updated',
                showConfirmButton: false,
                timer: 1500
            })
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
      
                                        
         
    <div class=" waves-effect waves-block waves-light">
          <div align="center">
          
            <asp:GridView CssClass="boxsha" ID="gvPhoneBook" runat="server"  AutoGenerateColumns="False" ShowFooter="True" DataKeyNames="num_v"
                ShowHeaderWhenEmpty="True"

                OnRowCommand="gvPhoneBook_RowCommand" OnRowEditing="gvPhoneBook_RowEditing" OnRowCancelingEdit="gvPhoneBook_RowCancelingEdit"
                OnRowUpdating="gvPhoneBook_RowUpdating" OnRowDeleting="gvPhoneBook_RowDeleting" CellPadding="3" GridLines="Horizontal" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="gvPhoneBook_SelectedIndexChanged">
                <%-- Theme Properties --%>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
                
                <AlternatingRowStyle BackColor="#F7F7F7" />
                
                <Columns>
                    <asp:TemplateField HeaderText="#" HeaderStyle-Height="60px" ItemStyle-CssClass="center">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("num_v") %>' runat="server" align="center" />
                        </ItemTemplate>
                        <EditItemTemplate>
                        </EditItemTemplate>
                        <FooterTemplate>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ItemStyle-CssClass="center" HeaderStyle-CssClass="center" HeaderText="From" >
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("aeroport_d") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtFirstName" Text='<%# Eval("aeroport_d") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtFirstNameFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="To" HeaderStyle-CssClass="center" ItemStyle-CssClass="center">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("aeroport_a") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtLastName" Text='<%# Eval("aeroport_a") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtLastNameFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="pilote number" HeaderStyle-CssClass="center" ItemStyle-CssClass="center">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("num_pil") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtContact" Text='<%# Eval("num_pil") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtContactFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Plane number" HeaderStyle-CssClass="center" ItemStyle-CssClass="center">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("num_av") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtEmail" Text='<%# Eval("num_av") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtEmailFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                      <asp:TemplateField HeaderText="Depart" HeaderStyle-CssClass="center" ItemStyle-CssClass="center">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("date_d") %>'  runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="date_d" Text='<%# Eval("date_d") %>' TextMode="Date" runat="server" /> 
                        </EditItemTemplate>
                        <FooterTemplate>
                                <asp:TextBox ID="date_d1" TextMode="Date" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Arrival" HeaderStyle-CssClass="center" ItemStyle-CssClass="center">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("date_a") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="date_a" Text='<%# Eval("date_a") %>' TextMode="Date" runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                                <asp:TextBox ID="date_a1" TextMode="Date" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton ImageUrl="~/image/edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px"/>
                            <asp:ImageButton ImageUrl="~/image/delete.png" runat="server" OnClientClick="return verif();" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:ImageButton ImageUrl="~/image/save.png" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px"/>
                            <asp:ImageButton ImageUrl="~/image/cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px"/>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:ImageButton ImageUrl="~/image/addnew.png" runat="server" CommandName="AddNew" ToolTip="Add New" Width="20px" Height="20px"/>
                        </FooterTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
            <asp:Label ID="lblSuccessMessage" Text="" runat="server" ForeColor="Green" />
            <br />
            <asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red" />

        </div>
    </div>
    
    </form>
          <script type="text/javascript" src="js/materialize.min.js"></script>

</body>
</html>