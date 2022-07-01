using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class adminbookissuing : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }


        //book issued button
        protected void Button3_Click(object sender, EventArgs e)
        {
            if(checkIfBookExist() && checkIfMemberExist())
            {
                if (checkIfIssueEntryExist())
                {
                    Response.Write("<script>alert('This Member already has this book');</script>");
                }
                else
                {
                    issueBook();
                    clearForm();
                }
            }
            else if(!checkIfBookExist())
            {
                Response.Write("<script>alert('Invalid Book ID');</script>");
            }
            else
            {
                Response.Write("<script>alert('Member is not active currently');</script>");

            }
        }

        //book return button
        protected void Button4_Click(object sender, EventArgs e)
        {
            if(checkIfBookExist() && checkIfMemberExist()) {
                if (checkIfIssueEntryExist())
                {
                    returnBook();
                }
                else
                {
                    Response.Write("<script>alert('This Entry does not exist');</script>");
                    clearForm();

                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Book ID or Member ID');</script>");
                clearForm();
            }

        }

        //Go button
        protected void Button2_Click(object sender, EventArgs e)
        {
            getName();
        }


        //USER DEFINED FUNCTION



        void returnBook()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("Delete from book_issue_tbl WHERE book_id = '"+TextBox1.Text.Trim()+"' AND member_id = '"+TextBox2.Text.Trim()+"'", con);
                int result = cmd.ExecuteNonQuery();

                if (result > 0)
                {
                    cmd = new SqlCommand("UPDATE book_master_tbl SET current_stock = current_stock+1 WHERE book_id='" + TextBox1.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Book Returned Successfully');</script>");
                    GridView1.DataBind();
                    con.Close();
                }
               

            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        void issueBook()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO book_issue_tbl(member_id,member_name,book_id,book_name,issue_date,due_date) VALUES(@member_id,@member_name,@book_id,@book_name,@issue_date,@due_date)", con);
                cmd.Parameters.AddWithValue("@member_id", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@member_name", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@book_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@book_name", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@issue_date", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@due_date", TextBox6.Text.Trim());

                cmd.ExecuteNonQuery();

                cmd = new SqlCommand("update  book_master_tbl set current_stock = current_stock-1 WHERE book_id='" + TextBox1.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();

                con.Close();
                Response.Write("<script>alert('Book Issued Successfully');</script>");

                GridView1.DataBind();

               
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
               
            }
        }


        bool checkIfBookExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from book_master_tbl WHERE book_id='" + TextBox1.Text.Trim() + "' AND current_stock>0", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

               
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;

            }

        }



        bool checkIfMemberExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from member_master_tbl WHERE member_id='" + TextBox2.Text.Trim() + "' AND account_status='active'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;

            }

        }

        bool checkIfIssueEntryExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from book_issue_tbl WHERE member_id='" + TextBox2.Text.Trim() + "' AND book_id='"+TextBox1.Text.Trim()+"'" , con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;

            }

        }
        void getName()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT book_name from book_master_tbl WHERE book_id='" + TextBox1.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox4.Text = dt.Rows[0]["book_name"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Wrong Book ID');</script>");
                }

                 cmd = new SqlCommand("SELECT full_name from member_master_tbl WHERE member_id='" + TextBox2.Text.Trim() + "'", con);
                 da = new SqlDataAdapter(cmd);
                 dt = new DataTable();
                 da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox3.Text = dt.Rows[0]["full_name"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Wrong Member ID');</script>");
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('"+ex.Message+"');</script>");
            }
        }

        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if(e.Row.RowType == DataControlRowType.DataRow)
                {
                    //Checking Condition here
                    DateTime dt = Convert.ToDateTime(e.Row.Cells[5].Text);
                    DateTime today = DateTime.Today;
                    if (today > dt)
                    {
                        e.Row.BackColor = System.Drawing.Color.PaleVioletRed;
                    }

                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}