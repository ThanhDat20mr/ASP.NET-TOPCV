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
    <script>
        $(document).ready(function () {
            $('a[href^="#"]').on('click', function (e) {
                e.preventDefault();

                var target = this.hash;
                var $target = $(target);

                $('html, body').stop().animate({
                    'scrollTop': $target.offset().top
                }, 500, 'swing', function () {
                    window.location.hash = target;
                });
            });
        });
</script>
    <script>window.onscroll = function () { myFunction() };

        var navbar = document.getElementById("menu");
        var sticky = navbar.offsetTop;

        function myFunction() {
            if (window.pageYOffset >= sticky) {
                navbar.classList.add("sticky")
            } else {
                navbar.classList.remove("sticky");
            }
        }</script>
</head>
<body style="height: 100px">
    <form id="form1" runat="server">
            
        <nav class="navbar ta-top">

       
        <asp:Panel ID="MenuPanel" runat="server" CssClass="menu-panel">
            <asp:ImageButton ID="imgLogo" runat="server"  Width="179px" Height = "68px" ImageUrl="~/src/img/logo_topcv.jpg" BorderStyle="None"/>
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
        <div id="main" style="margin-top: 0px; border-top: 1px solid #ccc; border-radius: 5px; padding: 10px 200px;">
            <div class="Panel1">
                <div class="panel-body">
                </div>
                <input type="search" id="txtSearch" name="job-search">

                <!--<select id="cbxCarrer" name="job-category" style="background-image: url('src/icons/company.png'); background-position: left center; background-repeat: no-repeat; padding-left: 50px;">

                    <option value="">Tất cả</option>
                    <option value="it">Công nghệ thông tin</option>
                    <option value="finance">Tài chính</option>
                    <option value="marketing">Marketing</option>
                </select>-->


                <asp:DropDownList id="cbxCarrer" runat="server" style="background-image: url('src/icons/company.png'); background-position: left center; background-repeat: no-repeat; padding-left: 50px;" OnLoad="cbxCarrer_Load">
                    <asp:ListItem Text="Tất cả" Value="All"></asp:ListItem>
                </asp:DropDownList>
                <select id="cbxLocation" name="job-location" style="background-image: url('src/icons/location.png'); background-position: left center; background-repeat: no-repeat; padding-left: 50px;">
                    <option value="">Tất cả</option>
                    <option value="hanoi">Hà Nội</option>
                    <option value="hcm">TP Hồ Chí Minh</option>
                    <option value="danang">Đà Nẵng</option>
                </select>

                <asp:Button runat="server" Text="Tìm kiếm" ID="btnSearch" BackColor="#00B14F" style="background-image:url('src/icons/search.png');background-position: left center; background-repeat: no-repeat; padding-left: 20px;color:white; width:150px;" />

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
                        <p><i class="fa-regular fa-clock"></i><asp:Label ID="lbDate" runat="server" Text="  Hạn nộp hồ sơ:" CssClass="detai"></asp:Label><asp:Button ID="btnRela" runat="server" Text="Liên hệ" CssClass="btnDetail" Style="border-radius: 10px; color: #00B14F; background-color: white; width: 100px;" /></p> </p>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="pnlTab" runat="server" Height="55px" style=" ">
                <ul class="menu" style="background-color: #F0F0F0; display: flex; justify-content: left; align-items: center; padding: 0px 230px; color: #808080;">
                    <li><a href='#pnlJD'>Tin tuyển dụng</a></li>
                    <li><a href='#'>Thông tin công ty</a></li>
                    <li><a href='#'>Việc làm công ty</a></li>
                </ul>
            </asp:Panel>
            <asp:Panel ID="pnlJD" runat="server" Height="570px" BackColor="White" Style="margin-left: 250px" Width="950px">
                <asp:Label runat="server" Text="Chi tiết tin tuyển dụng" style="font-size:30px; border-left: 7px solid #00b14f; padding:0px 25px;"></asp:Label>
                <asp:Panel ID="pnlJDs" runat="server" Height="270px" BackColor="#F2FBF6" Style="margin-left: 15px; margin-right:350px; ">
                    <asp:Label runat="server" Text="Thông tin chung" style="font-size:18px; text-decoration:underline;"></asp:Label>
                    <div class="grid-container">
                        <i id="salary" class="icon" style="background-image: url('../src/icons/location.png'); "></i>
                        <p style="margin-left: 35px;margin-bottom:25px;" id="lbSalary">Mức lương<br><asp:Label ID="lbSalary" runat="server" Text="Salary" style="font-size:16px;"></asp:Label></p>
                         <i id="amount" class="icon" style="background-image: url('../src/icons/location.png'); margin-top:95px;"></i>
                        <p style="margin-left: 35px; margin-bottom:25px;" id="lbAmount">Số lượng tuyển<br><asp:Label ID="lbAmount" runat="server" Text="amount" style="font-size:16px;"></asp:Label></p>
                        <i id="carrer" class="icon" style="background-image: url('../src/icons/location.png'); margin-top:170px;"></i>
                        <p style="margin-left: 35px; margin-bottom:20px;" id="lbCarrer">Hình thức làm việc <br><asp:Label ID="lbCarrer" runat="server" Text="carrer" style="font-size:16px;"></asp:Label></p>
                        <i id="level" class="icon" style="background-image: url('../src/icons/location.png'); "></i>
                        <p style="margin-left: 35px;margin-bottom:25px;" id="lbLevel">Cấp bậc <br><asp:Label ID="lbLevel" runat="server" Text="level" style="font-size:16px;"></asp:Label></p>
                         <i id="sexsual" class="icon" style="background-image: url('../src/icons/location.png'); margin-top:95px;"></i>
                        <p style="margin-left: 35px; margin-bottom:25px;" id="lbSexsual">Giới tính <br><asp:Label ID="lbSexsual" runat="server" Text="sexsual" style="font-size:16px;"></asp:Label></p>
                        <i id="exp" class="icon" style="background-image: url('../src/icons/location.png'); margin-top:170px;"></i>
                        <p style="margin-left: 35px; margin-bottom:20px;" id="lbExp">Kinh nghiệm <br><asp:Label ID="lbExp" runat="server" Text="exp" style="font-size:16px;"></asp:Label></p>
                    </div>
                    <!--<span class="icon-text">
                        <i id="salary" class="icon" style="background-image: url('../src/icons/location.png'); "></i>
                        <p style="margin-left: 35px;margin-bottom:25px;">Mức lương<br><asp:Label ID="lbJDSalary" runat="server" Text="Salary" style="font-size:16px;"></asp:Label></p>
                        <i id="carrer" class="icon" style="background-image: url('../src/icons/location.png'); margin-top:95px;"></i>
                        <p style="margin-left: 35px; margin-bottom:25px;">Text ở giữa<br><asp:Label ID="lbJDCarrer" runat="server" Text="Carrer" style="font-size:16px;"></asp:Label></p>
                        <i id="sexsual" class="icon" style="background-image: url('../src/icons/location.png'); margin-top:170px;"></i>
                        <p style="margin-left: 35px; margin-bottom:20px;">Text ở giữa<br><asp:Label ID="lbJDSexsual" runat="server" Text="Sexsual" style="font-size:16px;"></asp:Label></p>
                    </span>-->

                    </asp:Panel>
            </asp:Panel>
 

        </asp:Panel>
       
      
    </form>
        </body>              
</html>
