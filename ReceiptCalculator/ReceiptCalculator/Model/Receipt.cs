using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ReceiptCalculator.Model
{
    public class Receipt
    {
        // Private field
        private double _subtotal;

        // Properties
        public double DiscountRate { get; private set; }

        public double MoneyOff { get; private set; }

        public double Subtotal 
        {
            get
            {
                return _subtotal;
            }

            private set
            {
                if (value <= 0)
                {
                    throw new ArgumentOutOfRangeException();
                }

                _subtotal = value;
            }
        }

        public double Total { get; private set; }

        // Constructor
        public Receipt(double subtotal) 
        {
            Calculate(subtotal);
        }

        // Methods
        public void Calculate(double subtotal) 
        { 
            // Initialize subtotal field
            Subtotal = subtotal;

            // Calculate 
            if (Subtotal < 500)
            {
                DiscountRate = 0;
            }
            else if (Subtotal < 1000)
            {
                DiscountRate = .05;
            }
            else if (Subtotal < 5000)
            {
                DiscountRate = .10;
            }
            else
            {
                DiscountRate = .15;
            }

            MoneyOff = Subtotal * DiscountRate;
            Total = Subtotal - MoneyOff;
        }
    }
}