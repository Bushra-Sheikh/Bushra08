using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Bill_Payment_Project
{
    public partial class billdetails : System.Web.UI.Page
           
    {

        SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=Register;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=Register;Integrated Security=True");

            string q = "insert into Bill values('"+TextBox1.Text+"','"+DropDownList1.Text+"',"+TextBox3.Text+",'"+TextBox4.Text+"','"+TextBox5.Text+"','"+DropDownList2.Text+"','"+DropDownList3.Text+"')";
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter(q, con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            con.Close();

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string q= "select * from Bill where Bill_status like 'Unpaid%' ";
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter(q, con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView2.DataSource = ds;
            GridView2.DataBind();
            con.Close();

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            string q = "select * from Bill where Bill_status like 'Paid%' ";
            con.Open();
            SqlDataAdapter ad = new SqlDataAdapter(q, con);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            GridView3.DataSource = ds;
            GridView3.DataBind();
            con.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}