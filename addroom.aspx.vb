Imports System.Data.SqlClient
Public Class addroom
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = "Hello " + Session("unm")
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim cn As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\Documents\Hotel.mdf;Integrated Security=True;")
        Dim cmd As New SqlCommand("insert into hotel values ('" + DropDownList2.SelectedValue + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox5.Text + "','" + "" + "','" + "" + "','" + "" + "')", cn)
        cn.Open()
        cmd.ExecuteNonQuery()
            MsgBox("Success")
            cn.Close()

    End Sub
End Class