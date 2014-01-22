using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReceiptCalculator
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SumLabel.CssClass = "inputSpan";
            SumTextBox.CssClass = "inputField";
            SubmitButton.CssClass = "submitButton";
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {

        }
    }
}