<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SigninNormal.aspx.cs" Inherits="Flight_Managment.SigninNormal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Sign Up</title>
    <link href="Style.css" rel="stylesheet" />
    <link href="bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script>
        function signup() {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'Please complete the formulaire',
                
            })
        }
       
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <section class="cover">
            <div>
               
                <div class="elements">
                    <div class="introS">                     
                        <asp:Label ID="Label3" runat="server" Text="Registration"></asp:Label>
                        <asp:TextBox ID="TextBox3" CssClass="txt3 txtstyle" placeholder="Firstname" runat="server" ></asp:TextBox>
                        <asp:TextBox ID="TextBox4" CssClass="txt4 txtstyle" placeholder="Lastname" runat="server"></asp:TextBox>
                        <asp:TextBox ID="TextBox5" CssClass="txt5 txtstyle" placeholder="Phonenumber" runat="server"></asp:TextBox>
                        <asp:TextBox ID="TextBox1" CssClass="txt6 txtstyle" placeholder="Email" runat="server"></asp:TextBox>
                        <asp:TextBox ID="TextBox2" CssClass="txt7 txtstyle" DataField="Password" placeholder="password" TextMode="Password" runat="server"></asp:TextBox>
                        <asp:Button ID="Button1" CssClass="btn3" runat="server" Text="Sign Up" OnClick="Button1_Click"  />
                        
                    </div>
                </div>
            </div>
               
        </section>
    </form>
</body>
</html>
