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
<link rel="stylesheet" href="css/slick.css" />

<head runat="server">
    <title></title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>$(document).ready(function () {
            var slideCount = $('#slider img').length;
            var currentIndex = 0;
            function setupSlider() {
                $('#slider img').hide();
                $('#slider img:first').show();

                setInterval(function () {
                    currentIndex++;
                    if (currentIndex >= slideCount) {
                        currentIndex = 0;
                    }
                    changeSlide();
                }, 2000);
            }

            function changeSlide() {
                $('#slider img').fadeOut();
                $('#slider img:eq(' + currentIndex + ')').fadeIn();
            }
            setupSlider();
        });
</script>

    <script>
        $(document).ready(function () {
            $('a[href^="#"]').on('click', function (event) {
                var target = $(this.getAttribute('href'));
                if (target.length) {
                    event.preventDefault();
                    $('html, body').stop().animate({
                        scrollTop: target.offset().top - 80
                    }, 500);
                }
            });
        });
    </script>

</head>
<body style="height: 100px">
    <script type="text/javascript" src="slick/slick.min.js"></script>
    <form id="form1" runat="server" method="dialog" >
            
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
                <li><a href="fProfile.aspx">Tài khoản</asp:Label></a>
                    <ul class="submenu">
                        <li><a href="#"><i class="fa-solid fa-money-bill-transfer" style="color: #ffff00;"></i>Nâng cấp tài khoản VIP</a></li>
                        <li><a href="#"><i class="fa-solid fa-circle-dollar-to-slot"></i>Kích hoạt quà tặng</a></li>
                        <li><a href="#"><i class="fa-solid fa-id-card-clip"></i>Nhà tuyển dụng xem hồ sơ</a></li>
                        <li><a href="#"><i class="fa-sharp fa-regular fa-lightbulb"></i>Cài đặt gợi ý việc làm</a></li>
                        <li><a href="#"><i class="fa-solid fa-envelope-open"></i>Cài đặt nhận email</a></li>
                        <li><a href="#"><i class="fa-sharp fa-solid fa-shield-halved" style="color: #80ff80;"></i>Cài đặt bảo mật</a></li>
                        <li><a href="#"><i class="fa-sharp fa-light fa-key-skeleton"></i>Đổi mật khẩu</a></li>
                        <li><a href="fLogin.aspx" style="color:red;"><i class="fa-solid fa-arrow-right-from-bracket" style="color: #ff0000;"></i>Đăng xuất</a></li>
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

                <asp:DropDownList id="cbxCarrer" runat="server" style="background-image: url('src/icons/company.png'); background-position: left center; background-repeat: no-repeat; padding-left: 50px;">
                    <asp:ListItem Text="Tất cả" Value="All"></asp:ListItem>
                </asp:DropDownList>
                <select id="cbxLocation" name="job-location" style="background-image: url('src/icons/location.png'); background-position: left center; background-repeat: no-repeat; padding-left: 50px;">
                    <option value="">Tất cả</option>
                    <option value="hanoi">Hà Nội</option>
                    <option value="hcm">TP Hồ Chí Minh</option>
                    <option value="danang">Đà Nẵng</option>
                </select>
                <asp:Button runat="server" Text="Tìm kiếm" ID="btnSearch" BackColor="white" style="background-image:url('src/icons/search.png');background-position:  left ;background-repeat: no-repeat; padding-left: 20px;color:#00B14F; width:150px;" />

            </div>
        </div>


        <asp:Panel ID="Panel1" runat="server" style="height:auto" BackColor="#F0F0F0">
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
            <asp:Panel ID="pnlTab" runat="server" Height="55px" style=" padding:0px 10px; ">
                <ul class="menu" style="background-color: #F0F0F0; display: flex; justify-content: left; align-items: center; padding: 0px 230px; ">
                    <la><a href='#pnlJD' onclick="scrollToTarget()">Tin tuyển dụng</a></la>
                    <la><a href='#pnlInfoCO'>Thông tin công ty</a></la>
                    <la><a href='#pnlJobSimular'>Việc làm liên quan</a></la>
                </ul>
            </asp:Panel>
            <div class="big-panel">
                <asp:Panel ID="pnlJD" runat="server" BackColor="White" Style="margin-left: 250px; height:1300px;" Width="950px">
                    <asp:Label runat="server" Text="Chi tiết tin tuyển dụng" Style="font-size: 30px; border-left: 7px solid #00b14f; padding: 0px 25px;"></asp:Label>
                    <div class="small_panel">
                    <asp:Panel ID="pnlJDs" runat="server" Height="270px" BackColor="#F2FBF6" Style="margin-left: 15px; margin-right: 350px;border-bottom: 15px solid white;">
                        <asp:Label runat="server" Text="Thông tin chung: " Style="font-size: 18px; text-decoration: underline;"></asp:Label>
                        <div class="grid-container">
                            <i id="salary" class="icon" style="background-image: url('https://www.topcv.vn/v4/image/job-detail/icon/1.svg');"></i>
                            <p style="margin-left: 35px; margin-bottom: 25px;">Mức lương<br>
                                <asp:Label ID="lbSalary" runat="server" Text="Salary" Style="font-size: 16px;"></asp:Label></p>

                            <i id="amount" class="icon" style="background-image: url('https://www.topcv.vn/v4/image/job-detail/icon/5.svg'); margin-left: 300px;"></i>
                            <p style="margin-left: 35px; margin-bottom: 25px;">Số lượng tuyển<br>
                                <asp:Label ID="lbAmount" runat="server" Text="amount" Style="font-size: 16px;"></asp:Label></p>

                            <i id="carrer" class="icon" style="background-image: url( 'https://www.topcv.vn/v4/image/job-detail/icon/2.svg'); margin-top: 95px;"></i>
                         
                            <p style="margin-left: 35px; margin-bottom: 20px;">Hình thức làm việc
                                <br>
                                <asp:Label ID="lbCarrer" runat="server" Text="carrer" Style="font-size: 16px;"></asp:Label></p>

                            <i id="level" class="icon" style="background-image: url('https://www.topcv.vn/v4/image/job-detail/icon/6.svg'); margin-left: 300px; margin-top: 95px;"></i>
                            <p style="margin-left: 35px; margin-bottom: 25px;">Cấp bậc
                                <br>
                                <asp:Label ID="lbLevel" runat="server" Text="level" Style="font-size: 16px;"></asp:Label></p>

                            <i id="sexsual" class="icon" style="background-image: url('https://www.topcv.vn/v4/image/job-detail/icon/3.svg'); margin-top: 185px;"></i>
                            <p style="margin-left: 35px; margin-bottom: 25px;">Giới tính
                                <br>
                                <asp:Label ID="lbSexsual" runat="server" Text="sexsual" Style="font-size: 16px;"></asp:Label></p>

                            <i id="exp" class="icon" style="background-image: url('https://www.topcv.vn/v4/image/job-detail/icon/7.svg'); margin-top: 185px; margin-left: 300px;"></i>
                            <p style="margin-left: 35px; margin-bottom: 20px;">Kinh nghiệm
                                <br>
                                <asp:Label ID="lbExp" runat="server" Text="exp" Style="font-size: 16px;"></asp:Label></p>
                                
    
    
                        </div>
                    </asp:Panel>
                        <asp:Panel ID="pnlAddress" runat="server" Height="85px" BackColor="#F2FBF6" Style="margin-left: 15px; margin-right: 350px; padding:10px">
                        <p><asp:Label runat="server" Text="Địa điểm làm việc:" Style="font-size: 18px; text-decoration: underline; margin-left:5px;"></asp:Label><br>
                            <asp:Label ID="lbAddress" runat="server" Text="Address" Style="font-size: 16px; margin-left:15px;"></asp:Label> </p>
                    </asp:Panel>

                    <asp:Panel ID="pnlContent" runat="server" Height="85px" Style="margin-left: 15px; margin-right: 350px;">

                        <p style="margin-left: 15px; margin-bottom: 20px; height:auto;"><strong>Mô tả công việc</strong><br>
                            <asp:Label ID="lbDesc" runat="server" Text="exp" Style="font-size: 16px; "></asp:Label></p>

                        <p style="margin-left: 15px; margin-bottom: 20px;"><strong>Yêu cầu ứng viên</strong><br>
                            <asp:Label ID="lbRequire" runat="server" Text="exp" Style="font-size: 16px; "></asp:Label></p>

                        <p style="margin-left: 15px; margin-bottom: 20px;"><strong>Quyền lợi</strong> <br>
                            <asp:Label ID="lbBenifit" runat="server" Text="exp" Style="font-size: 16px; "></asp:Label></p>

                    </asp:Panel>
                        </div>
                    <div class="small-panel">
                        <asp:Panel ID="pnlShare" runat="server"  Height="250px" BackColor="#F2FBF6" Style="margin-right: 10px; margin-left: 630px; margin-top: -440px;">
                            <p style="margin-left: 15px; margin-bottom: 20px;"><strong>Thông tin chung</strong> 
                                <br>
                                <asp:Label ID="lbCopy" runat="server" Text="Sao chép đường dẫn:" Style="font-size: 16px;"></asp:Label></p>
                            <p style="margin-left:-15px;"><asp:TextBox ID="txtPath" runat="server" OnClick="txtPath_Click" ReadOnly="True"></asp:TextBox>   </p>
                            <asp:Button runat="server"  ID="btnFb" BackColor="White" style="background-image:url('src/img/logo_Fb.png');background-position: center; background-size:50px 40px; background-repeat: no-repeat;margin-top:20px; color:white; width:50px;" OnClick="btnFb_Click" />
                            <asp:Button runat="server"  ID="btnGit" BackColor="White" style="background-image:url('src/img/logo_Git.png');background-position: center; background-size:50px 40px; no-repeat; margin-top:20px;color:white; width:50px;" OnClick="btnGit_Click" />
                        </asp:Panel>

                        <div id="slider">
                            <img src="src/img/scene2.jpg" />
                            <img src="src/img/scene1.jpg" />
                            <img src="src/img/scene3.jpg" />
                        </div>


                       
                        </div>
                    
                    
                </asp:Panel><!-- pnlJD-->
                </div>
            <asp:Panel ID="pnlInfoCO" runat="server" Width="950px" BackColor="White" Style="margin-left: 250px; margin-top:25px;" Height="540px" >
                <asp:Label ID="lbTitleInfo" runat="server" Text="Thông tin " Style="font-size: 30px; border-left: 7px solid #00b14f; padding: 0px 25px;"></asp:Label>

                            <p style="margin-left: 45px; margin-bottom: 25px;"><strong>Giới thiệu</strong><br>
                                <asp:Label ID="lbInfo" runat="server" Text="" Style="font-size: 16px;"></asp:Label></p>

                <i id="icon_scale" class="icon" style="background-image: url('https://www.topcv.vn/v4/image/job-detail/icon/9.svg');background-size:30px 30px;"></i>
                            <p style="margin-left: 45px; margin-bottom: 25px;"><strong>Quy mô</strong><br>
                                <asp:Label ID="lbScale" runat="server" Text="" Style="font-size: 16px;"></asp:Label></p>

                <i id="icon_loca" class="icon" style="background-image: url('https://www.topcv.vn/v4/image/job-detail/icon/10.svg');"></i>
                            <p style="margin-left: 45px; margin-bottom: 25px; "><strong>Địa điểm</strong><br>
                                <asp:Label ID="lbAddressInfo" runat="server" Text="" Style="font-size: 16px;"></asp:Label></p>

                 <i id="icon_job" class="icon" style="background-image: url('../src/icons/job.png');background-size:30px 25px;"></i>
                            <p style="margin-left: 45px; margin-bottom: 25px; "><strong>Việc làm cùng công ty</strong><br>

        <asp:Panel ID="pnlJobs" runat="server" Height="100px" BackColor="white" style ="border:2px thin #ccc; display:flex; padding: 0px 5px" Width="950px">

            <!--<div class="panel-top">

                <h2>
                    <asp:Label ID="Label1" runat="server" Text="Name" style="color:black; "></asp:Label></h2>
                    <asp:Label ID="lbSalaryInfo" runat="server" Text="" style="font-size:15px; text-align:center;"></asp:Label>

            </div>
            <div class="panel-bottom">
                <p><i class="fa-regular fa-clock"></i>
                    <asp:Label ID="lbDateInfo" runat="server" Text="" style="font-size:15px;"></asp:Label></p>
                            </p>
                </div>-->

               
            </asp:Panel>    
            </asp:Panel> <!-- pnlInfoCO-->
        </asp:Panel>
        <footer>
            <asp:Panel ID="Panel2" runat="server" Height="55px" BackColor="#F0F0F0">
            </asp:Panel>
            <asp:Panel ID="pnlFooter" runat="server"  BackColor="White" Style=" margin-top:50px;" Height="130px" ><div class="container">
                <div class="column">
                    <div class="col-3">
                        <ul class="list-inline">
                            <li class="list-inline-item" style="margin-left:255px;">© 2014 - 2023 Công ty cổ phần TopCV Việt Nam <br />
                                Trụ sở HN: Tầng 3, 4 tòa FS - GoldSeason số 47 Nguyễn Tuân, Thanh Xuân Trung, Thanh Xuân, Hà Nội <br />
                                Chi nhánh TP HCM:
                                Tầng 12, Tòa nhà Dali, 24C Phan Đăng Lưu, Phường 6, Quận Bình Thạnh, TP Hồ Chí Minh </a></li>
                            <li><asp:ImageButton ID="imgLogo1" runat="server"  Width="179px" Height = "68px" ImageUrl="~/src/img/logo_topcv.jpg" BorderStyle="None" style="margin-top:-50px;"/></li>
                            
                        </ul>
                    </div>
                </div>
            </div></asp:Panel>
            
        </footer>

    </form>
</body>
</html>
