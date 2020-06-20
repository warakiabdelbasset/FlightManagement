<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ClientTable.aspx.cs" Inherits="Flight_Managment.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left:-2vw;margin-right:-2vw; margin-bottom:10vh; margin-top:5vh;">
         <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="card card-stats">
                <div class="card-header card-header-warning card-header-icon" >
                  <div class="card-icon" data-header-animation="true">
                    <i class="material-icons">people_outline</i>
                  </div>
                  <p class="card-category">
                      <asp:Label ID="Label1" runat="server" Text="Client"></asp:Label></p>
                  <h3 class="card-title"><asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                    <small><asp:Label ID="Label3" runat="server" Text=""></asp:Label></small>
                  </h3>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons">perm_contact_calendar</i>
                    <a href="#pablo">See more...</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="card card-stats">
                <div class="card-header card-header-success card-header-icon">
                  <div class="card-icon" data-header-animation="true">
                    <i class="material-icons">airplanemode_active</i>
                  </div>
                  <p class="card-category">Flight</p>
                  <h3 class="card-title"><asp:Label ID="Label9" runat="server" Text=""></asp:Label></h3>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons">date_range</i> Last 24 Hours
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="card card-stats">
                <div class="card-header card-header-danger card-header-icon">
                  <div class="card-icon" data-header-animation="true">
                    <i class="material-icons">perm_contact_calendar</i>
                  </div>
                  <p class="card-category">Pilots</p>
                  <h3 class="card-title"><asp:Label ID="Label10" runat="server" Text=""></asp:Label></h3>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons">local_offer</i> Tracked from Github
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
              <div class="card card-stats">
                <div class="card-header card-header-info card-header-icon">
                  <div class="card-icon" data-header-animation="true">
                    <i class="material-icons">assessment</i>
                  </div>
                  <p class="card-category">Reservation</p>
                  <h3 class="card-title"><asp:Label ID="Label8" runat="server" Text=""></asp:Label>
                  </h3>
                </div>
                <div class="card-footer">
                  <div class="stats">
            <div class="spinner-grow text-primary" role="status" style="width:20px; height:20px;">
  <span class="sr-only">Loading...</span>
</div>
                     Just Updated
                  </div>
                </div>
              </div>
            </div>
          </div>
    
        </div>


    <iframe name="iframe" src="IframeClient.aspx" align="center" scrolling="no" style="border:none; width:100vw;height:80%; overflow:hidden;margin-left:-8vw;margin-right:1vw;margin-bottom:-20px;margin-top:-6vh;
" >
     </iframe> 
 
          <script type="text/javascript" src="js/materialize.min.js"></script>
</asp:Content>
