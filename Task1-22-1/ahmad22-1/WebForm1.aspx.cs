using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ahmad22_1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        newdbEntities db = new newdbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

            //GridView1.DataSource = db.Customers.ToList();
            //GridView1.DataBind();
            var q = (from pd in db.Citys
                     join od in db.Customers on pd.id equals od.City_id
                     select new
                     {
                         od.Customer_name,
                         od.Age,
                         pd.city1,
                         od.Phone,
                         od.Email,
                         od.Photo,

                     }).ToList();
            GridView1.DataSource= q;
            GridView1.DataBind();


            if (!IsPostBack)
            {
                var x = from city in db.Citys select city;
                DropDownList1.DataSource = x.ToList();
                DropDownList1.DataTextField = "city1";
                DropDownList1.DataValueField = "id";
                DropDownList1.DataBind();
            }
            int v = db.Customers.Count();
            lblcount.Text = v.ToString();

            double ageavg = (double)db.Customers.Average(x => x.Age);
            lblage.Text = ageavg.ToString();  

            double agemax = (double)db.Customers.Max(z => z.Age);
            lblmax.Text = agemax.ToString();

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Customer person = new Customer();
            person.Customer_name = txtname.Text;
            person.Age = Convert.ToInt32(txtage.Text);
            person.Email = txtemail.Text;
            person.City_id = Convert.ToInt32(DropDownList1.SelectedValue);
            person.Phone = Convert.ToInt32(txtphone.Text);

            string image = "";
            if (FileUpload1.HasFile)
            {
                image = "/Uploads/" + FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("/Uploads/") + FileUpload1.FileName);
            }
            person.Photo = image;
            //string filePath = FileUpload1.FileName;
            //FileUpload1.SaveAs(Server.MapPath("~/Uploads/" + filePath));
            //person.Photo = FileUpload1.FileName;
            ////string v = db.Customer.Max(p => p.Phone);
           

            db.Customers.Add(person);
            db.SaveChanges();
            Response.Redirect("WebForm1.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string ct = (txtsearch.Text).ToString();
            GridView1.DataSource = db.Customers.Where(bb => bb.Customer_name == ct).ToList();
            GridView1.DataBind();
        }
    }
}