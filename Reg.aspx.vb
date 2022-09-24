Imports System.Data.SqlClient
Public Class Reg
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\Documents\Hotel.mdf;Integrated Security=True;")
    Function MyFunc() As Boolean
        Dim usravail As Boolean = False
        Dim cm As New SqlCommand("select unm from usr where unm = '" + TextBox1.Text + "'", cn)
        cn.Open()
        Dim da As New SqlDataAdapter()
        da.SelectCommand = cm
        Dim ds As New DataSet()
        da.Fill(ds)
        If (ds.Tables(0).Rows.Count > 0) Then
            usravail = True
            Label6.Text = "Not Available"
        Else
            Label6.Text = "Available"
        End If

        cn.Close()
        Return usravail
    End Function
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click


        Dim cmd As New SqlCommand("insert into usr values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')", cn)
            cn.Open()
            cmd.ExecuteNonQuery()
            MsgBox("Registered Successfully")
            Response.Redirect("~/login.aspx")


    End Sub
    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("~/login.aspx")

    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button3.Click
        MyFunc()

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class