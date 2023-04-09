<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fLogin.aspx.cs" Inherits="TopCV.fLogin" %>


<!DOCTYPE html>
<link rel="stylesheet" href="css/Acc.css" />
<html>

<head>
	<title>Trang đăng nhập</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>

	<h2>Trang đăng nhập</h2>

	<form runat="server" method="post">

		<div class="container">
			<asp:Label runat="server" ><b>Tên đăng nhập</b></asp:Label>
			<asp:TextBox runat="server" ID="txtUsn" type="text" placeholder="Nhập tên đăng nhập" name="uname" ></asp:TextBox>

			<asp:Label runat="server" ><b>Mật khẩu</b></asp:Label>
			<asp:TextBox runat="server" ID="txtPsw" type="password" placeholder="Nhập mật khẩu" name="psw" ></asp:TextBox>

			<asp:Button runat="server"  ID="btnLogin" Text="Đăng nhập" OnClick="btnLogin_Click" />
			<asp:Label ID="lblError" runat="server" Text=""></asp:Label>

			<span class="psw"><a href="fRegistry.aspx">Chưa có tài khoản?</a></span>
		</div>
	</form>

</body>
</html>

