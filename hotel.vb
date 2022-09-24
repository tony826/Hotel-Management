Imports System
Imports System.Collections.Generic
Imports System.ComponentModel.DataAnnotations
Imports System.ComponentModel.DataAnnotations.Schema
Imports System.Data.Entity.Spatial

<Table("hotel")>
Partial Public Class hotel
    Public Property Id As Integer

    <Required>
    <StringLength(10)>
    Public Property rtype As String

    Public Property rno As Integer

    Public Property pr As Integer

    <Required>
    <StringLength(10)>
    Public Property st As String

    Public Property price As Integer

    <Column(TypeName:="date")>
    Public Property checkin As Date?

    <Column(TypeName:="date")>
    Public Property checkout As Date?

    Public Property cost As Integer?
End Class
