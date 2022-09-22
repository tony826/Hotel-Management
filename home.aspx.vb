Public Class home1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label4.Text = "Hello  " + Session("unm")
    End Sub

End Class