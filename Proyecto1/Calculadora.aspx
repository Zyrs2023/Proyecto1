<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculadora.aspx.cs" Inherits="Proyecto1.Calculadora" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="calculadora.css"/>
    <title></title>
    <style type="text/css">
       .td
       {
           width:50px;
       }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="table-container"> 
            <table>
                <tr>
                    <td   colspan="5">
                        <asp:TextBox ID="txtDisplay" CssClass="calculadora boton12" runat="server" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="td">
                        <asp:Button ID="Button20" CssClass="calculadora boton  button2 button-sqrt" runat="server" Text="²√x" OnClick="CalculateSquareRoot" />
                    </td>
                    <td class="td">
                        <asp:Button ID="Button19" CssClass="calculadora boton button2" runat="server" Text="C" OnClick="ClearDisplay" />
                    </td>
                    <td class="td">
                        <asp:Button ID="Button18" CssClass="calculadora boton  button2" runat="server" Text="⌫"  OnClick="Backspace" />
                    </td>
                    <td class="td">
                        <asp:Button ID="Button17" CssClass="calculadora boton  button2" runat="server" Text="n!" OnClick="CalculateFactorial" />
                    </td>
                    <td class="td">
                        <asp:Button ID="Button16" CssClass="calculadora boton  button2 button-÷" runat="server" Text="÷"  OnClick="AppendDivideOperator" />
                    </td>
                </tr>
                <tr>
                    <td class="td">  
                        <asp:Button ID="Button21" CssClass="calculadora boton  button2 button-square" runat="server" Text="x²" OnClick="CalculateSquare"  />
                    </td>
                    <td class="td">
                        <asp:Button ID="Button8" CssClass="calculadora boton button4 button3" runat="server" OnClick="AppendNumber" Text="7" />
                    </td>
                    <td>
                        <asp:Button ID="Button9" CssClass="calculadora boton button4 button3" runat="server" OnClick="AppendNumber" Text="8" />
                    </td>
                    <td class="td">
                        <asp:Button ID="Button10" CssClass="calculadora boton button4 button3" runat="server" OnClick="AppendNumber" Text="9" />
                    </td>
                    <td class="td">
                        <asp:Button ID="Button15" CssClass="calculadora boton button2 button-x" runat="server" Text="x"  OnClick="Appendmulti"  />
                    </td>
                </tr>
                <tr>
                    <td class="td">
                        <asp:Button ID="Button22" CssClass="calculadora boton button2 button-10y" runat="server" Text="10y" OnClick="CalculateTenPower" />
                    </td>
                    <td class="td">
                        <asp:Button ID="Button5" CssClass="calculadora boton button4 button3" runat="server" OnClick="AppendNumber" Text="4" />
                    </td>
                    <td class="td">
                        <asp:Button ID="Button6" CssClass="calculadora boton button4 button3" runat="server" OnClick="AppendNumber" Text="5" />
                    </td>
                    <td class="td">
                        <asp:Button ID="Button7" CssClass="calculadora boton button4 button3" runat="server" OnClick="AppendNumber" Text="6" />
                    </td>
                    <td class="td">
                        <asp:Button ID="Button14" CssClass="calculadora boton button2" runat="server" Text="-" OnClick="AppendOperator" Width="80px" />
                    </td>
                </tr>
                <tr>
                    <td class="td">
                        <asp:Button ID="Button23" CssClass="calculadora boton button2" runat="server" Text="log" OnClick="CalculateLog" />
                    </td>
                    <td class="td">
                        <asp:Button ID="Button2" CssClass="calculadora boton button4 button3" runat="server" OnClick="AppendNumber" Text="1" />
                    </td>
                    <td class="td">
                        <asp:Button ID="Button3" CssClass="calculadora boton button4 button3" runat="server" OnClick="AppendNumber" Text="2" />
                    </td>
                    <td class="td">
                        <asp:Button ID="Button4" CssClass="calculadora boton button4 button3" runat="server" OnClick="AppendNumber" Text="3" />
                    </td>
                    <td class="td">
                        <asp:Button ID="Button13" CssClass="calculadora boton button2" runat="server" Text="+" OnClick="AppendOperator" />
                    </td>
                </tr>
                <tr>
                    <td class="td">
                        <asp:Button ID="Button24" CssClass="calculadora boton button2 button-exponent" runat="server" Text="xᵞ" OnClick="CalculateExponent"/>
                    </td>
                    <td class="td">
                        <asp:Button ID="Button25" CssClass="calculadora boton button4 button3" runat="server" Text="+/-" OnClick="ChangeSign" />
                    </td>
                    <td class="td">
                        <asp:Button ID="Button1" CssClass="calculadora boton button4 button3" OnClick="AppendNumber" runat="server" Text="0" />
                    </td>
                    <td class="td">
                        <asp:Button ID="Button11" CssClass="calculadora boton button4 button3 button-coma" runat="server" Text="," OnClick="AppendComma" />
                    </td>
                    <td class="td">
                        <asp:Button ID="Button12" CssClass="calculadora boton boton11 button1" runat="server" Text="=" OnClick="CalculateResult" ForeColor="White"/>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
