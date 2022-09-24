Imports System
Imports System.Collections.Generic
Imports System.ComponentModel.DataAnnotations
Imports System.ComponentModel.DataAnnotations.Schema
Imports System.Data.Entity.Spatial

<Table("book")>
Partial Public Class book
    Public Property Id As Integer

    <Required>
    <StringLength(50)>
    Public Property unm As String

    <Required>
    <StringLength(10)>
    Public Property name As String

    <Required>
    <StringLength(50)>
    Public Property mobile As String

    <Required>
    <StringLength(10)>
    Public Property rtype As String

    <Required>
    <StringLength(10)>
    Public Property rno As String

    <Column(TypeName:="date")>
    Public Property checkin As Date

    <Column(TypeName:="date")>
    Public Property checkout As Date

    Public Property cost As Integer?

    <StringLength(10)>
    Public Property status As String
End Class
