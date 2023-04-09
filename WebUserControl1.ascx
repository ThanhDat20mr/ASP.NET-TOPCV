<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="TopCV.WebUserControl1" %>
<asp:Panel ID="pnlChild" runat="server" Height="150px" BackColor="white" style ="border:1px solid black;" Width="150px">

            <div class="panel-top">

                <h2>
                    <asp:Label ID="Label1" runat="server" Text="Name" style="color:black; "></asp:Label></h2>
                    <asp:Label ID="lbSalaryInfo" runat="server" Text="5" style="font-size:15px; text-align:center;"></asp:Label>

            </div>
            <div class="panel-bottom">
                <p><i class="fa-regular fa-clock"></i>
                    <asp:Label ID="lbDateInfo" runat="server" Text="Helloi" style="font-size:15px;"></asp:Label></p>
                            </p>
                </div>

               
            </asp:Panel> 