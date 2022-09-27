Imports System.Data.SqlClient
Imports System
Public Class detail
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Label3.Text = Session("unm")

    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try

            Dim dt As Nullable(Of Date) = TextBox2.Text

            Dim cn As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\Documents\hotel.mdf;Integrated Security=True;")
            Dim cmd1 As New SqlCommand("delete book where rno = '" + TextBox1.Text + "'", cn)
            Dim cmd2 As New SqlCommand("update hotel set st = '" + "Available" + "' where rno = '" + TextBox1.Text + "'", cn)
            Dim cmd3 As New SqlCommand("update hotel set checkin = '" + dt + "' where rno = '" + TextBox1.Text + "'", cn)
            Dim cmd4 As New SqlCommand("update hotel set checkout = '" + dt + "' where rno = '" + TextBox1.Text + "'", cn)
            cn.Open()
            cmd1.ExecuteNonQuery()
            cmd2.ExecuteNonQuery()
            cmd3.ExecuteNonQuery()
            cmd4.ExecuteNonQuery()
            cn.Close()
            Response.Write("<script>alert('Booking Cancelled Successfully')</script>")
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
End Class