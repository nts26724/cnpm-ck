using Guna.UI2.WinForms;
using Newtonsoft.Json.Linq;
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
    public partial class Incomming : UserControl
    {
        public Incomming()
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
            guna2CirclePictureBox1.Location = new Point(8, 30);
            guna2HtmlLabel1.Height = Utils.GetTextHeight(guna2HtmlLabel1) + guna2HtmlLabel1.Top;

            guna2ContainerControl1.Height = guna2HtmlLabel1.Height + guna2ContainerControl1.Top;

            this.Height = guna2ContainerControl1.Bottom + 5;
        }

        public Image Avatar { get => guna2CirclePictureBox1.Image; set => guna2CirclePictureBox1.Image = value; }

        private void Incomming_Resize(object sender, EventArgs e)
        {
            AdjustHeight();
        }

        private void guna2ContainerControl1_Click(object sender, EventArgs e)
        {

        }

        private void guna2HtmlLabel1_Click(object sender, EventArgs e)
        {

        }
    }
}
