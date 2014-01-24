<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ReceiptCalculator.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kassa Kvitto</title>
    <link href="~/Content/style.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <form id="form1" runat="server">
            <fieldset>
                <legend>Kassa Kvitto</legend>
                <div class="formContent">
                    <asp:Label ID="SumLabel" runat="server" Text="Total köpsumma"></asp:Label>
                </div>
                <div class="formContent">
                    <asp:TextBox ID="SumTextBox" runat="server"></asp:TextBox><p id="unit">kr</p>
                    <asp:CompareValidator ID="CompareValidator" runat="server" ErrorMessage="Ange köpsumma större än 0." ControlToValidate="SumTextBox" Display="Dynamic" Type="Double" Operator="GreaterThan" ValueToCompare="0"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ErrorMessage="Fältet får inte vara tomt." ControlToValidate="SumTextBox" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="formContent">
                    <p><asp:Button ID="SubmitButton" runat="server" Text="Beräkna Rabatt" OnClick="SubmitButton_Click" /></p>
                </div>
                <asp:Panel ID="ReceiptPanel" runat="server" Visible="false">
                    <p><asp:Label ID="SubTotalLabel" runat="server" Text="Label"></asp:Label></p>
                    <p><asp:Label ID="DiscountRateLabel" runat="server" Text="Label"></asp:Label></p>
                    <p><asp:Label ID="DiscountLabel" runat="server" Text="Label"></asp:Label></p>
                    <p><asp:Label ID="TotalLabel" runat="server" Text="Label"></asp:Label></p>
                </asp:Panel>
            </fieldset>
        </form>
    </div>
    <script>
        function WebForm_OnSubmit() {
            if (typeof (ValidatorOnSubmit) == "function" && ValidatorOnSubmit() == false) {
                //alert();
                return false;
            };
            return true;
        };
    </script>
</body>
</html>
