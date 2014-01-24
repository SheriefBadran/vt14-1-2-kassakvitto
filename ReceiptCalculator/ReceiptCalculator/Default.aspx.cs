using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ReceiptCalculator.Model;

namespace ReceiptCalculator
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Empty
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {

            if (IsValid)
            {
                Receipt receipt = new Receipt(double.Parse(SumTextBox.Text));

                SubTotalLabel.Text = String.Format("Totalt: {0:c}", receipt.Subtotal);
                DiscountRateLabel.Text = String.Format("Rabattsats: {0:p0}", receipt.DiscountRate);
                DiscountLabel.Text = String.Format("Rabatt: {0:c}", receipt.MoneyOff);
                TotalLabel.Text = String.Format("Att betala: {0:c}", receipt.Total);
                ReceiptPanel.Visible = true;
            }
        }
    }
}