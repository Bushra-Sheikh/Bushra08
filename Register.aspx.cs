using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Bill_Payment_Project
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=Register;Integrated Security=True");
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string gender = "";
            if(RadioButton1.Checked)
            {
                gender = "Male";
            }
            else if(RadioButton2.Checked)
            {
                gender = "Female";
            }
            string marital = "";
            if(CheckBox1.Checked)
            {
                marital = "Married";
            }
            else if(CheckBox2.Checked)
            {
                marital = "Unmarried";
            }
            string q = "insert into reg values(@n1,@n2,@n3,@n4,@n5,@n6,@n7,@n8,@n9,@n10 ,@n11,@n12,@n13,@n14)";
            con.Open();
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.Parameters.AddWithValue("@n1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@n2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@n3", TextBox3.Text);
            cmd.Parameters.AddWithValue("@n4", TextBox4.Text);
            cmd.Parameters.AddWithValue("@n5", TextBox5.Text);
            cmd.Parameters.AddWithValue("@n6", gender);
            cmd.Parameters.AddWithValue("@n7", marital);
            cmd.Parameters.AddWithValue("@n8", TextBox6.Text);
            cmd.Parameters.AddWithValue("@n9", TextBox7.Text);
            cmd.Parameters.AddWithValue("@n10", DropDownList3.Text );
            cmd.Parameters.AddWithValue("@n11", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@n12", DropDownList2.Text);
            cmd.Parameters.AddWithValue("@n13", TextBox10.Text);
            cmd.Parameters.AddWithValue("@n14", TextBox9.Text);
            cmd.ExecuteNonQuery();
            Response.Redirect("Login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            RadioButton1.Checked = false;
            RadioButton2.Checked = false;
            TextBox6.Text = "";
            TextBox7.Text = "";
            DropDownList3.Text = "";
            DropDownList1.SelectedItem.Text = "";
            DropDownList2.SelectedItem.Text = "";
            TextBox10.Text = "";
            TextBox9.Text = "";
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if(args.Value.Length==8)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }
    }
}