Imports System.Data.SqlClient
Public Class edit

    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Label1.Text = "Hello " + Session("unm")

    End Sub

    Protected Sub Update_Click(sender As Object, e As EventArgs) Handles Update.Click
        Dim cn As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\Documents\hotel.mdf;Integrated Security=True;")
        Try
            Dim cmd As New SqlCommand("select count(unm) from usr where unm = '" + TextBox1.Text + "' and pass = '" + TextBox2.Text + "'", cn)
            cn.Open()
            Dim chk As Integer = cmd.ExecuteScalar()
            cn.Close()
            If chk > 0 Then
                Dim cmd1 As New SqlCommand("update usr set pass = '" + TextBox3.Text + "' where unm = '" + TextBox1.Text + "'", cn)
                cn.Open()
                cmd1.ExecuteNonQuery()
                cn.Close()
                MsgBox("Success")
            Else
                MsgBox("Old Password Is Incorrect")
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub Cancel_Click(sender As Object, e As EventArgs) Handles Cancel.Click
        TextBox1.Text = " "
        TextBox2.Text = " "
        TextBox3.Text = " "
        TextBox4.Text = " "
        Response.Redirect("~/home.aspx")
    End Sub
End Class