Imports System.Data.SqlClient
Public Class home
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Label1.Text = "Hello " + Session("unm")
    End Sub
    Public Function Calc(chin As Date, chout As Date, p As Integer) As Integer
        Date.Parse(chout)
        chout = DateAdd("d", 1, chout)
        Dim dt1 = chout - chin
        Dim days As Integer = dt1.TotalDays
        Dim cost As Integer = days * p
        Return cost
    End Function
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim cn As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Lenovo\Documents\hotel.mdf;Integrated Security=True;")



        Dim c As Integer = Calc(TextBox3.Text, TextBox4.Text, DropDownList4.SelectedItem.Text)
        TextBox5.Text = c
        Dim cmd1 As New SqlCommand("insert into book values('" + Session("unm") + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + "Booked" + "')", cn)

        cn.Open()
        cmd1.ExecuteNonQuery()
        Dim cmd As New SqlCommand("update hotel set st = '" + "Booked" + "' where rno = '" + DropDownList2.Text + "'", cn)
        Dim cmd2 As New SqlCommand("update hotel set checkin = '" + CType(TextBox4.Text.ToString(), Date) + "',checkout = '" + CType(TextBox4.Text.ToString(), Date) + "' where rno = '" + DropDownList2.Text + "'", cn)
        cmd.ExecuteNonQuery()
        cmd2.ExecuteNonQuery()
        Dim cmdd As New SqlCommand("update hotel set cost = '" + TextBox5.Text + "'  where rno = '" + DropDownList2.Text + "'", cn)
        cmdd.ExecuteNonQuery()
        MsgBox("Total Cost :" + TextBox5.Text)
        MsgBox("Success")
        cn.Close()

        Response.Redirect("~/detail.aspx")
    End Sub

End Class