Imports System
Imports System.ComponentModel.DataAnnotations.Schema
Imports System.Data.Entity
Imports System.Linq

Partial Public Class Model1
    Inherits DbContext

    Public Sub New()
        MyBase.New("name=Model1")
    End Sub

    Public Overridable Property books As DbSet(Of book)
    Public Overridable Property hotels As DbSet(Of hotel)
    Public Overridable Property usrs As DbSet(Of usr)

    Protected Overrides Sub OnModelCreating(ByVal modelBuilder As DbModelBuilder)
        modelBuilder.Entity(Of book)() _
            .Property(Function(e) e.unm) _
            .IsUnicode(False)

        modelBuilder.Entity(Of book)() _
            .Property(Function(e) e.name) _
            .IsFixedLength()

        modelBuilder.Entity(Of book)() _
            .Property(Function(e) e.mobile) _
            .IsUnicode(False)

        modelBuilder.Entity(Of book)() _
            .Property(Function(e) e.rtype) _
            .IsFixedLength()

        modelBuilder.Entity(Of book)() _
            .Property(Function(e) e.rno) _
            .IsFixedLength()

        modelBuilder.Entity(Of book)() _
            .Property(Function(e) e.status) _
            .IsFixedLength()

        modelBuilder.Entity(Of hotel)() _
            .Property(Function(e) e.rtype) _
            .IsFixedLength()

        modelBuilder.Entity(Of hotel)() _
            .Property(Function(e) e.st) _
            .IsFixedLength()

        modelBuilder.Entity(Of usr)() _
            .Property(Function(e) e.unm) _
            .IsUnicode(False)

        modelBuilder.Entity(Of usr)() _
            .Property(Function(e) e.email) _
            .IsUnicode(False)

        modelBuilder.Entity(Of usr)() _
            .Property(Function(e) e.pass) _
            .IsUnicode(False)

        modelBuilder.Entity(Of usr)() _
            .Property(Function(e) e.mob) _
            .IsUnicode(False)
    End Sub
End Class
