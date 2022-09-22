Imports System.Data.SqlClient
Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim cn As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\Documents\Hotel.mdf;Integrated Security=True;")
        cn.Open()
        Dim cmd As New SqlCommand("select count(unm) from usr where unm  = '" & TextBox1.Text & "' and pass = '" & TextBox2.Text & "'", cn)
        Dim i As Integer = cmd.ExecuteScalar()
        If i = 1 Then
            Session("unm") = TextBox1.Text
            If TextBox1.Text = "Sahil" Then
                Response.Redirect("~/mngs.aspx")
            Else
                Response.Redirect("~/home.aspx")
                MsgBox(Prompt:="Success")

            End If
        Else
            MsgBox(Prompt:="Invalid UserName or Password")
        End If
        cn.Close()

    End Sub

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        Response.Redirect("~/Reg.aspx")
    End Sub

    Protected Sub LinkButton2_Click(sender As Object, e As EventArgs) Handles LinkButton2.Click
        Response.Redirect("~/edit.aspx")
    End Sub
End Class