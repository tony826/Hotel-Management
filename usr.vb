Imports System
Imports System.Collections.Generic
Imports System.ComponentModel.DataAnnotations
Imports System.ComponentModel.DataAnnotations.Schema
Imports System.Data.Entity.Spatial

<Table("usr")>
Partial Public Class usr
    Public Property Id As Integer

    <Required>
    <StringLength(50)>
    Public Property unm As String

    <Required>
    <StringLength(50)>
    Public Property email As String

    <Required>
    <StringLength(50)>
    Public Property pass As String

    <Required>
    <StringLength(10)>
    Public Property mob As String
End Class
