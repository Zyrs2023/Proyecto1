using Microsoft.CodeAnalysis;
using Microsoft.VisualBasic;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Numerics;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using static System.Net.Mime.MediaTypeNames;

namespace Proyecto1
{
    public partial class Calculadora : System.Web.UI.Page
    {
        private double storedValue = 0; // Variable para almacenar el valor previo
        private string currentOperator = "";
        private double? baseValue;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (ViewState["BaseValue"] != null)
            {
                baseValue = (double)ViewState["BaseValue"];
            }



        }

        protected void AppendNumber(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            txtDisplay.Text += button.Text;
        }

        protected void AppendComma(object sender, EventArgs e)
        {
            txtDisplay.Text += ",";
        }

        protected void CalculateResult(object sender, EventArgs e)
        {
            try
            {
                var result = new DataTable().Compute(txtDisplay.Text, null);
                txtDisplay.Text = result.ToString();
            }
            catch
            {
                txtDisplay.Text = "Error";
            }
        }

        protected void AppendOperator(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            txtDisplay.Text += " " + "*" + " " ; // Usa "*" para la operación de multiplicación
           
        }
        protected void AppendDivideOperator(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            txtDisplay.Text += " " + "/" + " "; // Usa "/" para la operación de división
        }

        protected void CalculateFactorial(object sender, EventArgs e)
        {
            try
            {
                int number = int.Parse(txtDisplay.Text);
                BigInteger factorial = CalculateFactorial(number);
                txtDisplay.Text = factorial.ToString();
            }
            catch
            {
                txtDisplay.Text = "Error";
            }
        }
        private BigInteger CalculateFactorial(int n)
        {
            if (n < 0)
            {
                return -1; // Indicar error si se intenta calcular el factorial de un número negativo
            }

            if (n == 0 || n == 1)
            {
                return 1;
            }

            BigInteger result = 1;
            for (int i = 2; i <= n; i++)
            {
                result *= i;
            }

            return result;
        }

        protected void ClearDisplay(object sender, EventArgs e)
        {
            txtDisplay.Text = "";
        }

        protected void CalculateSquareRoot(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            // Realiza la operación de raíz cuadrada aquí
            double number = double.Parse(txtDisplay.Text);
            double result = Math.Sqrt(number);
            txtDisplay.Text = result.ToString();
        }



        protected void CalculateLog(object sender, EventArgs e)
        {
            try
            {
                double number = double.Parse(txtDisplay.Text);
                double result = Math.Log(number);
                txtDisplay.Text = result.ToString();
            }
            catch
            {
                txtDisplay.Text = "Error";
            }
        }

        protected void ChangeSign(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtDisplay.Text))
            {
                double number = double.Parse(txtDisplay.Text);
                number = -number; // Cambia el signo del número
                txtDisplay.Text = number.ToString();
            }
        }

        protected void Button24_Click(object sender, EventArgs e)
        {

        }

        protected void CalculateSquare(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            // Realiza la operación de elevar al cuadrado aquí
            double number = double.Parse(txtDisplay.Text);
            double result = Math.Pow(number, 2);
            txtDisplay.Text = result.ToString();

        }

        protected void Backspace(object sender, EventArgs e)
        {
            if (txtDisplay.Text.Length > 0)
            {
                txtDisplay.Text = txtDisplay.Text.Remove(txtDisplay.Text.Length - 1);
            }
        }

        protected void CalculateTenPower(object sender, EventArgs e)
        {
            try
            {
                double y = double.Parse(txtDisplay.Text);
                double result = Math.Pow(10, y);
                txtDisplay.Text = result.ToString();
            }
            catch
            {
                txtDisplay.Text = "Error";
            }
        }
        

        protected void CalculateExponent(object sender, EventArgs e)
        {
            if (baseValue.HasValue)
            {
                try
                {
                    double exponent = double.Parse(txtDisplay.Text);
                    double result = Math.Pow(baseValue.Value, exponent);
                    txtDisplay.Text = result.ToString();
                    baseValue = null; // Resetea la base después del cálculo
                }
                catch
                {
                    txtDisplay.Text = "Error";
                }
            }
            else
            {
                // Almacena la base y solicita el exponente
                if (!string.IsNullOrEmpty(txtDisplay.Text))
                {
                    baseValue = double.Parse(txtDisplay.Text);
                    txtDisplay.Text = "";
                }
            }

            ViewState["BaseValue"] = baseValue;
        }   
    }
}
