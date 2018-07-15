<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="CalculatorWebService.ClassLibrary.Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: 40px">
            <asp:Label ID="lbl_firstNumber_Input" runat="server" Text="1.Parameter:" Font-Size="Large"></asp:Label>
            <asp:TextBox ID="txt_TextBox1" runat="server" Height="33px" Width="188px" ></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lbl_secondNumber_Input" runat="server" Text="2.Parameter:" Font-Size="Large"></asp:Label>
            <asp:TextBox ID="txt_TextBox2" runat="server" Height="33px" Width="188px" ></asp:TextBox>
            <br />
            <br />
            <asp:DropDownList ID="ddl_CalculationTypes" runat="server" Height="66px" Width="323px">
                <asp:ListItem>Please select</asp:ListItem>
                <asp:ListItem>Add</asp:ListItem>
                <asp:ListItem>Substract</asp:ListItem>
                <asp:ListItem>Multiply</asp:ListItem>
                <asp:ListItem>Divide</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_Calculate" runat="server" Height="83px" OnClick="btn_Calculate_Click" Text="Calculate" Width="142px" />
            <br />
            <br />
            <asp:Label ID="lbl_result" runat="server" Font-Size="Large" Text="Result:"></asp:Label>
            <asp:TextBox ID="txt_result" runat="server" Height="33px" Width="188px"></asp:TextBox>
        </div>
    </form>
</body>
</html>
