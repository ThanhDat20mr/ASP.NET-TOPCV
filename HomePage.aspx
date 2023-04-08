<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="TopCV.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-+sb8Z7W+5ru5Y5C9GmMAW8yHJmGljKgWPfLZpevBjrNtVp23IH4Z/DO9uJ+vDnfl7VwSjs17j+7Vquu06tLTQ==" crossorigin="anonymous" />
<link rel="stylesheet" href="css/all.css">
<link rel="stylesheet" href="css/style.css">
<head runat="server">
    <title></title>

</head>
<body style="height: 100px">
    <form id="form1" runat="server">
            
        <nav class="navbar ta-top">

       
        <asp:Panel ID="MenuPanel" runat="server" CssClass="menu-panel">
            <asp:ImageButton ID="imgLogo" runat="server"  Width="179px" Height = "68px" ImageUrl="~/src/img/logo_topcv.jpg"/>
            <ul class="menu">
                <li><a href="#">Việc làm</a>
                    <ul class="submenu">
                        <li><a href="#"><i class="fa-solid fa-bullseye"></i>Tìm việc làm</a></li>
                        <li><a href="#"><i class="fa-solid fa-briefcase"></i>Việc làm đã ứng tuyển</a></li>
                        <li><a href="#"><i class="fa-regular fa-heart"></i>Việc làm đã lưu</a></li>
                        <li><a href="#"><i class="fa-brands fa-android"></i>Việc làm phù hợp</a></li>
                        <li><a href="#"><i class="fa-brands fa-free-code-camp"></i>Việc làm IT</a></li>
                        <li><a href="#"><i class="fa-solid fa-user-graduate"></i>Việc làm Senior</a></li>

                    </ul>
                </li>
                <li><a href="#">Hồ sơ & CV</a>
                    <ul class="submenu">
                        <li><a href="#">Quản lý CV</a></li>
                        <li><a href="#">Quản lý Cover Letter</a></li>
                        <li><a href="#">Mẫu CV</a></li>
                        <li><a href="#">Mẫu Cover Letter</a></li>
                        <li><a href="#">Dịch vụ tư vấn CV</a></li>
                        <li><a href="#">Hướng dẫn viết CV theo ngành nghề</a></li>
                        <li><a href="#">Thư viện CV theo ngành nghề</a></li>
                        <li><a href="#">TopCV profile</a></li>
                    </ul>
                </li>
                <li><a href="#">Công ty</a>
                    <ul class="submenu">
                        <li><a href="#">Danh sách công ty</a></li>
                        <li><a href="#">Top công ty</a></li>
                    </ul>
                </li>
                <li><a href="#">Phát triển sự nghiệp</a>
                    <ul class="submenu">
                        <li><a href="#">TopCV Contest</a></li>
                        <li><a href="#">TopCV Skills</a></li>
                        <li><a href="#">Trắc nghiệm tính cách MBTI</a></li>
                        <li><a href="#">Trắc nghiệm MI</a></li>
                    </ul>
                </li>
                <li><a href="#">Công cụ</a>
                    <ul class="submenu">
                        <li><a href="#">Tính lương GROSS - NET</a></li>
                        <li><a href="#">Tính lãi suất kép</a></li>
                        <li><a href="#">Tính thuế thu nhập cá nhân</a></li>
                        <li><a href="#">Lập kế hoạch tiết kiệm</a></li>
                        <li><a href="#">Tính Bảo hiểm thất nghiệp</a></li>
                        <li><a href="#">Tính bảo hiểm xã hội một lần</a></li>
                        <li><a href="#">Mobile App TopCV</a></li>
                    </ul>
                </li>
            </ul>

         </asp:Panel>
         </nav>
        <div id="main" style="margin-top: 0px; border-top: 1px solid #ccc; border-radius: 5px; padding: 10px 300px;">
            <div class="Panel1">
                <div class="panel-body">
                </div>
                <input type="search" id="txtSearch" name="job-search">

                <select id="cbxCarrer" name="job-category" style="background-image: url('src/icons/company.png'); background-position: left center; background-repeat: no-repeat; padding-left: 50px;">

                    <option value="">Tất cả</option>
                    <option value="it">Công nghệ thông tin</option>
                    <option value="finance">Tài chính</option>
                    <option value="marketing">Marketing</option>
                </select>
                <select id="cbxLocation" name="job-location" style="background-image: url('src/icons/location.png'); background-position: left center; background-repeat: no-repeat; padding-left: 50px;">
                    <option value="">Tất cả</option>
                    <option value="hanoi">Hà Nội</option>
                    <option value="hcm">TP Hồ Chí Minh</option>
                    <option value="danang">Đà Nẵng</option>
                </select>

                <button type="submit" id="btnSearch">Tìm kiếm</button>
            </div>
        </div>


        <asp:Panel ID="Panel1" runat="server" Height="1000px" BackColor="#F0F0F0">
            <asp:Panel ID="pnlBlank" runat="server" Height="55px">

            </asp:Panel>
            <asp:Panel ID="pnlDetails" runat="server" Height="250px" BackColor="white" Style="margin-left: 250px" Width="950px">
                <div class="logo">
                    <asp:Image ID="COLogo" runat="server" ImageUrl="src/img/VHTECH.png" Width="150px" Height="150px" AlternateText="My Image" CssClass="detai" />

                    <div class="details">
                        <h2><asp:Label ID="lbJobName" runat="server" Text="Name" CssClass="detai"></asp:Label></h2>
                        <p><asp:Label ID="lbCOName" runat="server" Text="COName" CssClass="detai"></asp:Label><asp:Button ID="btnApply" runat="server" Text="Ứng tuyển" CssClass="btnDetail" BackColor="#00B14F" Style="border-radius: 10px; color: white; width: 100px;" /></p>
                        <p><asp:Label ID="lbDate" runat="server" Text="DateJobs" CssClass="detai"></asp:Label><asp:Button ID="btnRela" runat="server" Text="Liên hệ" CssClass="btnDetail" Style="border-radius: 10px; color: #00B14F; background-color: white; width: 100px;" /></p> </p>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="pnlTab" runat="server" Height="55px" style=" ">
                <ul class="menu" style="background-color: #F0F0F0; display: flex; justify-content: left; align-items: center; padding: 0px 230px; color: #808080;">
                    <li><a href='<%= ResolveUrl("~/PageName.aspx") %>'>Tin tuyển dụng</a></li>
                    <li><a href='<%= ResolveUrl("~/PageName.aspx") %>'>Thông tin công ty</a></li>
                    <li><a href='<%= ResolveUrl("~/PageName.aspx") %>'>Việc làm công ty</a></li>
                </ul>
            </asp:Panel>
            <asp:Panel ID="pnlJD" runat="server" Height="550px" BackColor="White" Style="margin-left: 250px" Width="950px">
                <asp:Label runat="server" Text="Chi tiết tin tuyển dụng" style="font-size:30px; border-left: 7px solid #00b14f; padding:0px 25px;"></asp:Label>
                <asp:Panel ID="pnlJDs" runat="server" Height="250px" BackColor="#F2FBF6" Style="margin-left: 15px; margin-right:350px; ">
                    <asp:Label runat="server" Text="Thông tin chung" style="font-size:18px; text-decoration:underline;"></asp:Label>

                    </asp:Panel>
            </asp:Panel>
        </asp:Panel>
       
      
    </form>
        </body>              
</html>
