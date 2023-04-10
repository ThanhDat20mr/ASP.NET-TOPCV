<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fRegistry.aspx.cs" Inherits="TopCV.fRegistry" %>

<link rel="stylesheet" href="css/Acc.css" />
<!DOCTYPE html>
<html>
<head>
	<title>Trang đăng nhập</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
</head>
<body>

	<h2>Trang đăng ký</h2>

	<form runat="server" method="post">

		<div class="container">
			<asp:Label runat="server" for="uname"><b>Tên đăng nhập</b></asp:Label>
			<asp:TextBox runat="server" ID="txtUsn" type="text" placeholder="Nhập tên đăng nhập" name="uname" ></asp:TextBox>

			<asp:label runat="server" for="psw"><b>Mật khẩu</b></asp:label>
			<asp:TextBox runat="server" ID="txtPsw" type="password" placeholder="Nhập mật khẩu" name="psw" ></asp:TextBox>

			<asp:label runat="server" for="psw"><b>Nhập lại khẩu</b></asp:label>
			<asp:TextBox runat="server" ID="txtRepsw" type="password" placeholder="Nhập lại mật khẩu" name="psw" ></asp:TextBox>

			

			<asp:Button runat="server"  ID="btnRegistry" Text="Đăng ký" OnClick="btnRegistry_Click" />
			<asp:Label ID="lblError" runat="server" Text=""></asp:Label>

			</div>
	</form>

</body>
</html>
