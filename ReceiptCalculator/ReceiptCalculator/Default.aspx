<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ReceiptCalculator.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Kassa Kvitto</title>
        <link href ="~/Content/style.css" rel="stylesheet" />
    </head>
    <body>
        <header>
            <h1>Kassa Kvitto</h1>
        </header>

        <div id ="container">
            <form id="form1" runat="server">
                <div class="formContent">
                    <asp:Label ID="SumLabel" runat="server" Text="Total köpsumma"></asp:Label>
                </div>
                <div class="formContent">
                    <asp:TextBox ID="SumTextBox" runat="server"></asp:TextBox>
                </div>
                <div class="formContent">
                    <asp:Button ID="SubmitButton" runat="server" Text="Button" OnClick="SubmitButton_Click" />
                </div>
            </form>
        </div>
    </body>
</html>
