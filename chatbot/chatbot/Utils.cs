using Guna.UI2.WinForms;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace chatbot
{
    public static class Utils
    {
        public static int GetTextHeight(Guna2HtmlLabel lbl)
        {
            using ( Graphics g = lbl.CreateGraphics())
            {
                SizeF size = g.MeasureString(lbl.Text, lbl.Font, lbl.Width);
                return (int)Math.Ceiling(size.Height);
            }

        }
    }
}
