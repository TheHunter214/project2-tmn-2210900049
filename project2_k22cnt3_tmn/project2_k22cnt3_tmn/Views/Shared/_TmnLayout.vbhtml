﻿<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@ViewBag.Title - Tran Minh Nam </title>
    @Styles.Render("~/Content/css")
    @Scripts.Render("~/bundles/modernizr")
</head>
<body>
    <nav class="navbar navbar-expand-sm navbar-toggleable-sm navbar-dark bg-dark">
        <div class="container">
            @Html.ActionLink("ROLEX TMN", "TmnIndex", "TmnHome", New With {.area = ""}, New With {.class = "navbar-brand"})
            <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target=".navbar-collapse" title="Toggle navigation" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse d-sm-inline-flex justify-content-between">
                <ul class="navbar-nav flex-grow-1">
                    <li>@Html.ActionLink("TmnHome", "TmnIndex", "TmnHome", New With {.area = ""}, New With {.class = "nav-link"})</li>
                    <li>@Html.ActionLink("TmnAbout", "TmnAbout", "TmnHome", New With {.area = ""}, New With {.class = "nav-link"})</li>
                    <li>@Html.ActionLink("TmnContact", "TmnContact", "TmnHome", New With {.area = ""}, New With {.class = "nav-link"})</li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container body-content">
        @RenderBody()
        <hr />
        <footer>
            <p>&copy; @DateTime.Now.Year - Tran Minh Nam</p>
        </footer>
    </div>

    @Scripts.Render("~/bundles/jquery")
    @Scripts.Render("~/bundles/bootstrap")
    @RenderSection("scripts", required:=False)
</body>
</html>
