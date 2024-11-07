Public Class TmnHomeController
    Inherits System.Web.Mvc.Controller

    Function TmnIndex() As ActionResult
        Return View()
    End Function

    Function TmnAbout() As ActionResult
        ViewData("Message") = "Your application description page."

        Return View()
    End Function

    Function TmnContact() As ActionResult
        ViewData("Message") = "Your contact page."

        Return View()
    End Function
End Class
