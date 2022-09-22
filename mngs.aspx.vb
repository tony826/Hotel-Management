Public Class mngsaspx
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lbl1.Text = "Hello " + Session("unm")
    End Sub
End Class