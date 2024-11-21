using Guna.UI2.WinForms;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace chatbot.ChatItems
{
    public partial class OutGoing : UserControl
    {
        public OutGoing()
        {
            InitializeComponent();
        }

        public string message
        {
            get
            {
                return guna2HtmlLabel1.Text;
            }
            set
            {
                guna2HtmlLabel1.Text = value;
                AdjustHeight();
            }
        }


        void AdjustHeight()
        {
            guna2HtmlLabel1.Height = Utils.GetTextHeight(guna2HtmlLabel1);

            guna2ContainerControl1.Height = guna2HtmlLabel1.Height + 2 * guna2ContainerControl1.Top;

            this.Height = guna2ContainerControl1.Bottom + 5;
        }

        private void OutGoing_Resize(object sender, EventArgs e)
        {
            AdjustHeight();

        }

    }
}
