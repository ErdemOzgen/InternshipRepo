using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CalculatorWebService.ClassLibrary
{
    public partial class Calculator : System.Web.UI.Page
    {
        public static CalculatorServiceRefence.CalculatorClient client = new CalculatorServiceRefence.CalculatorClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btn_Calculate_Click(object sender, EventArgs e)
        {
            double inputFromTextbox1 = Double.Parse(txt_TextBox1.Text);
            double inputFromTextbox2 = Double.Parse(txt_TextBox2.Text);
            double outputResult = 0.0;
            try
            {
                switch (ddl_CalculationTypes.Text)
                {
                    case "Add":
                        outputResult = client.add(inputFromTextbox1, inputFromTextbox2);
                        break;
                    case "Substract":
                        outputResult = client.subtract(inputFromTextbox1, inputFromTextbox2);
                        break;
                    case "Multiply":
                        outputResult = client.multiply(inputFromTextbox1, inputFromTextbox2);
                        break;
                    case "Divide":
                        outputResult = client.divide(inputFromTextbox1, inputFromTextbox2);
                        break;
                    default:
                        outputResult = 0.0;
                        break;
                }
            }catch(Exception exception)
            {

                string directory = @"D:\Error.txt";  //default folder location
                if (!Directory.Exists(directory))
                {
                    Directory.CreateDirectory(directory);
                    File.AppendAllText(Server.MapPath("~/Error.txt"), "Message :" + exception.Message + "<br/>" + Environment.NewLine + "StackTrace :" + exception.StackTrace +
               "" + Environment.NewLine + "Date :" + DateTime.Now.ToString());
                    string New = Environment.NewLine + "-----------------------------------------------------------------------------" + Environment.NewLine;
                    File.AppendAllText(Server.MapPath("~/Error.txt"), New);
                }
            }
            txt_result.Text = outputResult.ToString();
        }
    }
}