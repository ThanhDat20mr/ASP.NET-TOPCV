<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fProfile.aspx.cs" Inherits="TopCV.fProfile" %>

<!DOCTYPE html>
<link rel="stylesheet" href="css/Acc.css" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server" method="get">

        <h2>THÔNG TIN NGƯỜI DÙNG</h2>
        <asp:Label ID="lbUSN" runat="server"></asp:Label>


        <div class="container">
            <asp:Label runat="server"><b>Họ tên</b></asp:Label>
            <asp:TextBox runat="server" ID="txtName" type="text" placeholder="Nhập tên" name="uname"></asp:TextBox>
            <asp:Label runat="server"><b>Số điện thoại</b></asp:Label>
             <asp:TextBox runat="server" ID="txtPhone" type="text" placeholder="Nhập sđt" name="uname"></asp:TextBox>
            <asp:Label runat="server"><b>Địa chỉ</b></asp:Label>
             <asp:TextBox runat="server" ID="txtAddress" type="text" placeholder="Nhập địa chỉ" name="uname"></asp:TextBox>

            <asp:Label runat="server"><b>CV link</b></asp:Label>
             <asp:TextBox runat="server" ID="txtCV" type="text" placeholder="Nhập link cv" name="uname"></asp:TextBox>

            <asp:Label runat="server"><b>Avatar</b></asp:Label>
            <asp:FileUpload ID="fileAvatar" runat="server" Width="252px" />

            <asp:Label runat="server"><b>Giới tính</b></asp:Label>
            <asp:DropDownList id="cbxSex" runat="server" stye="background-position: left center; background-repeat: no-repeat; padding-left: 50px;" style="margin-left: 71px">
                    <asp:ListItem Text="Nam" Value="1"></asp:ListItem>
                <asp:ListItem Text="Nữ" Value="0"></asp:ListItem>
                </asp:DropDownList>

        </div>
	    <p>

            <asp:Button runat="server" ID="btnSave" Text="Lưu" Height="56px" Width="147px" OnClick="btnSave_Click"   />
            <asp:Label ID="lblError" runat="server" Text=""></asp:Label>

            </p>
	</form>
</body>
</html>
