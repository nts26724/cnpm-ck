using chatbot.ChatItems;
using Guna.UI2.WinForms;
using System.Diagnostics;
using System.Net.Http.Json;
using System.Text;
using System.Text.Json;
using System.Text.Json.Serialization;
using Newtonsoft.Json;

namespace chatbot
{
    public partial class Form1 : Form
    {
        private bool mouseDown;
        private Point lastLocation;
        private static readonly HttpClient client = new HttpClient();

        public Form1()
        {
            InitializeComponent();
            this.FormBorderStyle = FormBorderStyle.None;
        }



        private void Form1_MouseDown(object sender, MouseEventArgs e)
        {
            mouseDown = true;
            lastLocation = e.Location;
        }

        private void Form1_MouseMove(object sender, MouseEventArgs e)
        {
            if (mouseDown)
            {
                this.Location = new Point(
                    (this.Location.X - lastLocation.X) + e.X, (this.Location.Y - lastLocation.Y) + e.Y);

                this.Update();
            }
        }

        private void Form1_MouseUp(object sender, MouseEventArgs e)
        {
            mouseDown = false;
        }

        private void guna2ImageButton1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        public async void Send()
        {
            if (guna2TextBox1.Text.Trim().Length == 0) return;

            addOutGoing(guna2TextBox1.Text);
            string userMessage = guna2TextBox1.Text;
            guna2TextBox1.Text = string.Empty;

            addIncomming("Đang soạn câu trả lời");
            string response = await getBotResponseAsync(userMessage);
            var lastControl = guna2Panel2.Controls[0];
            guna2Panel2.Controls.Remove(lastControl);
            addIncomming(response);
        }

        private void TextBox1_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Return)
            {
                Send();  // Gọi hàm Send() khi nhấn Enter
                e.Handled = true;  // Ngăn sự kiện Enter đi tiếp
                e.SuppressKeyPress = true;  // Ngăn tiếng "ding" khi nhấn Enter
            }
        }

        public void addOutGoing(string message)
        {
            OutGoing outGoing = new ChatItems.OutGoing();
            outGoing.message = message;
            guna2Panel2.Controls.Add(outGoing);
            guna2Panel2.Controls.SetChildIndex(outGoing, 0);
            outGoing.Dock = DockStyle.Top;
        }

        public void addIncomming(string message)
        {
            Incomming incomming = new ChatItems.Incomming();
            incomming.message = message;
            guna2Panel2.Controls.Add(incomming);
            guna2Panel2.Controls.SetChildIndex(incomming, 0);
            incomming.Dock = DockStyle.Top;
        }

        private void guna2ImageButton2_Click(object sender, EventArgs e)
        {
            Send();
        }

        // ---------------------------------------------------------------------------
        public async Task<string> getBotResponseAsync(string message)
        {
            string url = "https://api.vectorshift.ai/api/chatbots/run";

            var client = new HttpClient();

            // Đặt headers
            client.DefaultRequestHeaders.Add("Api-Key", "sk_CKaNFnBjF7ufr9E2JdiGLTcSnzI3ttoYhprvcytTTNEgd3mi");

            // Tạo dữ liệu body (json)
            var body = new
            {
                input = message,
                chatbot_name = "bot_AM",
                username = "slathh",
                conversation_id = (object)null // Không có conversation_id, dùng null
            };

            // Chuyển body thành JSON
            var jsonBody = JsonConvert.SerializeObject(body);
            var content = new StringContent(jsonBody, Encoding.UTF8, "application/json");

            //dynamic jsonResponse = null;
            content.Headers.ContentType = new System.Net.Http.Headers.MediaTypeHeaderValue("application/json");

            try
            {
                // Gửi yêu cầu POST
                var response = await client.PostAsync(url, content);

                // Kiểm tra mã trạng thái HTTP
                response.EnsureSuccessStatusCode();

                // Đọc phản hồi
                string responseBody = await response.Content.ReadAsStringAsync();

                // Chuyển phản hồi thành JSON
                dynamic jsonResponse = JsonConvert.DeserializeObject(responseBody);

                // In kết quả output từ API
                //Console.WriteLine(jsonResponse.output);
                return jsonResponse.output;

            }
            catch (Exception ex)
            {
                return "Lỗi: " + ex.Message;
            }

        }
    }
}
